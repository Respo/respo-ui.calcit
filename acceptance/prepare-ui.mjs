import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync} from 'node:fs';
const run=(...args)=>execFileSync('calcit',args,{encoding:'utf8',stdio:['ignore','pipe','pipe'],maxBuffer:16*1024*1024});
const json=(...args)=>JSON.parse(run(...args,'--format','json'));
const q=(...args)=>json('query',...args).data;
assert.equal(run('-v').trim(),'0.30.1');
const reviewed=JSON.parse(readFileSync('acceptance/reviewed-targets.json','utf8'));
assert.equal(reviewed.matches.length,33);
assert.ok(reviewed.matches.every(m=>m.region==='code'));
const inventory=()=>{
  const all=[];
  const namespaces=q('ns').namespaces;
  assert.equal(namespaces.length,21);
  for(const ns of namespaces){
    const names=run('query','defs',ns).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);
    assert.equal(names.length,q('ns',ns).definition_count,ns);
    for(const name of names)all.push(q('def',`${ns}/${name}`));
  }
  assert.equal(all.length,607);
  assert.equal(all.reduce((n,d)=>n+d.tests.length,0),22);
  assert.equal(all.reduce((n,d)=>n+d.examples.length,0),57);
  return all;
};
const before=inventory(), expected=structuredClone(before);
for(const target of reviewed.targets)assert.deepEqual(before.find(d=>d.id===target.id),target,`Reviewed target drift: ${target.id}`);
const methods=q('type','calcit.core/Option').methods;
for(const name of new Set(reviewed.matches.map(m=>m.symbol))){
  assert.equal(methods.find(m=>m.name===`.${name.slice(7)}`)?.definition,`calcit.core/${name}`);
}
const at=(node,path)=>path.split('.').reduce((v,k)=>v[Number(k)],node);
const operations=[];
for(const id of new Set(reviewed.matches.map(m=>m.id))){
  const target=expected.find(d=>d.id===id);
  for(const match of reviewed.matches.filter(m=>m.id===id)){
    const parts=match.path.split('.'),leaf=Number(parts.pop());
    assert.equal(leaf,0,'Only direct call heads are reviewed');
    const parent=parts.reduce((v,k)=>v[Number(k)],target.code);
    assert.equal(at(target.code,match.path),match.symbol);
    assert.ok(parent.length>=2);
    parent[0]=`.${match.symbol.slice(7)}`;
  }
  operations.push(['edit','def',id,'--overwrite','--input-format','json-ast','--code',JSON.stringify(target.code)]);
}
const version=expected.find(d=>d.id==='respo-ui.config/version');
assert.deepEqual(version.code,['def','version','|0.8.0']);
version.code=['def','version','|0.8.1'];
operations.push(['edit','def',version.id,'--overwrite','--input-format','json-ast','--code',JSON.stringify(version.code)]);
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));
writeFileSync('acceptance/operations.json',JSON.stringify(operations,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));
assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
assert.deepEqual(inventory(),expected,'All607 complete views preserved except33 reviewed call heads and displayed version');
writeFileSync('acceptance/after.json',JSON.stringify(expected,null,2));
const diff=json('analyze','program-diff','HEAD');
assert.equal(diff.data.evidence.changes.length,10);
assert.ok(diff.data.evidence.changes.every(c=>c.path.endsWith('/code')));
writeFileSync('acceptance/program-diff.json',JSON.stringify(diff,null,2));
writeFileSync('acceptance/snapshot-blob.txt',execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}));
writeFileSync('acceptance/preserved.json',JSON.stringify({definitions:607,tests:22,examples:57,oldCalls:33,changedDefinitions:10,allSchemasDocsFFIAndAttachedRegionsUnchanged:true},null,2));
