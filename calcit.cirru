
{} (:package |respo-ui)
  :configs $ {} (:init-fn |respo-ui.main/main!) (:output |src) (:port 6001) (:reload-fn |respo-ui.main/reload!) (:storage-key |calcit.cirru) (:version |0.6.2)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-router.calcit/ |respo-markdown.calcit/
  :entries $ {}
  :files $ {}
    |respo-ui.comp $ %{} :FileEntry
      :defs $ {}
        |comp-attributes $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1678209340788) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1678209346467) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1678209340788) (:by |bjmr3HZle) (:text |comp-attributes)
              |h $ %{} :Expr (:at 1678209340788) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1678209351158) (:by |bjmr3HZle) (:text |options)
              |l $ %{} :Expr (:at 1678209351634) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1678209352015) (:by |bjmr3HZle) (:text |let)
                  |b $ %{} :Expr (:at 1678209352669) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Expr (:at 1678209352849) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678209355137) (:by |bjmr3HZle) (:text |items)
                          |b $ %{} :Expr (:at 1678209355999) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678209357891) (:by |bjmr3HZle) (:text |&map:get)
                              |b $ %{} :Leaf (:at 1678209358877) (:by |bjmr3HZle) (:text |options)
                              |h $ %{} :Leaf (:at 1678209361131) (:by |bjmr3HZle) (:text |:items)
                      |b $ %{} :Expr (:at 1678209362282) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678209381768) (:by |bjmr3HZle) (:text |item-width)
                          |b $ %{} :Expr (:at 1678209694729) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1678209697164) (:by |bjmr3HZle) (:text |either)
                              |T $ %{} :Expr (:at 1678209382269) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1678209385604) (:by |bjmr3HZle) (:text |&map:get)
                                  |b $ %{} :Leaf (:at 1678209386563) (:by |bjmr3HZle) (:text |options)
                                  |h $ %{} :Leaf (:at 1678209389695) (:by |bjmr3HZle) (:text |:item-width)
                              |b $ %{} :Leaf (:at 1678209769043) (:by |bjmr3HZle) (:text |160)
                      |h $ %{} :Expr (:at 1678209391388) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678209394380) (:by |bjmr3HZle) (:text |item-height)
                          |b $ %{} :Expr (:at 1678209396058) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678209396058) (:by |bjmr3HZle) (:text |&map:get)
                              |b $ %{} :Leaf (:at 1678209396058) (:by |bjmr3HZle) (:text |options)
                              |h $ %{} :Leaf (:at 1678209398675) (:by |bjmr3HZle) (:text |:item-height)
                      |l $ %{} :Expr (:at 1678209400787) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678209402359) (:by |bjmr3HZle) (:text |title)
                          |b $ %{} :Expr (:at 1678209403923) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678209405193) (:by |bjmr3HZle) (:text |&map:get)
                              |b $ %{} :Leaf (:at 1678209408070) (:by |bjmr3HZle) (:text |options)
                              |h $ %{} :Leaf (:at 1678209410410) (:by |bjmr3HZle) (:text |:title)
                      |o $ %{} :Expr (:at 1678305436337) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678305436706) (:by |bjmr3HZle) (:text |ret)
                          |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |list->)
                              |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |&map:get)
                                          |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |options)
                                          |h $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:class-name)
                                  |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:style)
                                      |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |merge)
                                          |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |{})
                                              |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:display)
                                                  |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:grid)
                                              |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:grid-template-columns)
                                                  |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |str)
                                                      |b $ %{} :Leaf (:at 1678305603560) (:by |bjmr3HZle) (:text "|\"repeat(auto-fit, minmax(")
                                                      |h $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |item-width)
                                                      |l $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text "|\"px,1fr))")
                                              |l $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:gap)
                                                  |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |8)
                                          |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |&map:get)
                                              |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |options)
                                              |h $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:style)
                              |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |->)
                                  |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |items)
                                  |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |map-indexed)
                                      |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |fn)
                                          |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |idx)
                                              |b $ %{} :Leaf (:at 1704820916598) (:by |bjmr3HZle) (:text |info)
                                          |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |[])
                                              |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |idx)
                                              |h $ %{} :Expr (:at 1704820907360) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1704820910793) (:by |bjmr3HZle) (:text |let)
                                                  |L $ %{} :Expr (:at 1704820911839) (:by |bjmr3HZle)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1704820911981) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1704820919111) (:by |bjmr3HZle) (:text |item)
                                                          |b $ %{} :Expr (:at 1704820919780) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1704820921975) (:by |bjmr3HZle) (:text |cond)
                                                              |b $ %{} :Expr (:at 1704820922877) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Expr (:at 1704820923017) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1704820925567) (:by |bjmr3HZle) (:text |map?)
                                                                      |b $ %{} :Leaf (:at 1704820926161) (:by |bjmr3HZle) (:text |info)
                                                                  |b $ %{} :Leaf (:at 1704820927308) (:by |bjmr3HZle) (:text |info)
                                                              |h $ %{} :Expr (:at 1704820929051) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Expr (:at 1704820931552) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1704820930229) (:by |bjmr3HZle) (:text |tuple?)
                                                                      |b $ %{} :Leaf (:at 1704820932962) (:by |bjmr3HZle) (:text |info)
                                                                  |b $ %{} :Expr (:at 1704820934164) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1704820936263) (:by |bjmr3HZle) (:text |tag-match)
                                                                      |b $ %{} :Leaf (:at 1704820936786) (:by |bjmr3HZle) (:text |info)
                                                                      |h $ %{} :Expr (:at 1704820937536) (:by |bjmr3HZle)
                                                                        :data $ {}
                                                                          |T $ %{} :Expr (:at 1704820937917) (:by |bjmr3HZle)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1704821015667) (:by |bjmr3HZle) (:text |:attr)
                                                                              |h $ %{} :Leaf (:at 1704820941394) (:by |bjmr3HZle) (:text |l)
                                                                              |l $ %{} :Leaf (:at 1704821018057) (:by |bjmr3HZle) (:text |v)
                                                                          |b $ %{} :Expr (:at 1704820943576) (:by |bjmr3HZle)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1704820943922) (:by |bjmr3HZle) (:text |{})
                                                                              |b $ %{} :Expr (:at 1704820947534) (:by |bjmr3HZle)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1704820948987) (:by |bjmr3HZle) (:text |:value)
                                                                                  |b $ %{} :Leaf (:at 1704820949223) (:by |bjmr3HZle) (:text |v)
                                                                              |h $ %{} :Expr (:at 1704820949730) (:by |bjmr3HZle)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1704820952459) (:by |bjmr3HZle) (:text |:label)
                                                                                  |b $ %{} :Leaf (:at 1704820954564) (:by |bjmr3HZle) (:text |l)
                                                                      |l $ %{} :Expr (:at 1704820937536) (:by |bjmr3HZle)
                                                                        :data $ {}
                                                                          |T $ %{} :Expr (:at 1704820937917) (:by |bjmr3HZle)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1704821193401) (:by |bjmr3HZle) (:text |:attr-span)
                                                                              |h $ %{} :Leaf (:at 1704820941394) (:by |bjmr3HZle) (:text |l)
                                                                              |l $ %{} :Leaf (:at 1704821018057) (:by |bjmr3HZle) (:text |v)
                                                                              |o $ %{} :Leaf (:at 1704821191309) (:by |bjmr3HZle) (:text |s)
                                                                          |b $ %{} :Expr (:at 1704820943576) (:by |bjmr3HZle)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1704820943922) (:by |bjmr3HZle) (:text |{})
                                                                              |b $ %{} :Expr (:at 1704820947534) (:by |bjmr3HZle)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1704820948987) (:by |bjmr3HZle) (:text |:value)
                                                                                  |b $ %{} :Leaf (:at 1704820949223) (:by |bjmr3HZle) (:text |v)
                                                                              |h $ %{} :Expr (:at 1704820949730) (:by |bjmr3HZle)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1704820952459) (:by |bjmr3HZle) (:text |:label)
                                                                                  |b $ %{} :Leaf (:at 1704820954564) (:by |bjmr3HZle) (:text |l)
                                                                              |l $ %{} :Expr (:at 1704821195120) (:by |bjmr3HZle)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1704821196400) (:by |bjmr3HZle) (:text |:span)
                                                                                  |b $ %{} :Leaf (:at 1704821197373) (:by |bjmr3HZle) (:text |s)
                                                              |l $ %{} :Expr (:at 1704820956970) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1704820958190) (:by |bjmr3HZle) (:text |true)
                                                                  |b $ %{} :Expr (:at 1704820961733) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1704820964710) (:by |bjmr3HZle) (:text |raise)
                                                                      |b $ %{} :Leaf (:at 1704820979595) (:by |bjmr3HZle) (:text "|\"unknown attribute info")
                                                  |T $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |div)
                                                      |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |{})
                                                          |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:style)
                                                              |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |{})
                                                                  |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:grid-column)
                                                                      |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |let)
                                                                          |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                            :data $ {}
                                                                              |T $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |sp)
                                                                                  |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |&map:get)
                                                                                      |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |item)
                                                                                      |h $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:span)
                                                                          |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |if)
                                                                              |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |some?)
                                                                                  |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |sp)
                                                                              |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |str-spaced)
                                                                                  |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text "|\"span")
                                                                                  |h $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |sp)
                                                                              |l $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text "|\"")
                                                          |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:class-name)
                                                              |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |str-spaced)
                                                                  |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |style-item)
                                                                  |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |&map:get)
                                                                      |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |options)
                                                                      |h $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:css-item)
                                                      |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |div)
                                                          |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |{})
                                                              |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:class-name)
                                                                  |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |str-spaced)
                                                                      |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |css-item-label)
                                                                      |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |&map:get)
                                                                          |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |options)
                                                                          |h $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:css-label)
                                                          |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |<>)
                                                              |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |&map:get)
                                                                  |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |item)
                                                                  |h $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:label)
                                                      |l $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |div)
                                                          |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |{})
                                                              |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:class-name)
                                                                  |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |&map:get)
                                                                      |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |options)
                                                                      |h $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:css-value)
                                                          |h $ %{} :Expr (:at 1699981778595) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1699981779167) (:by |bjmr3HZle) (:text |let)
                                                              |L $ %{} :Expr (:at 1699981779645) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Expr (:at 1699981779818) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1699981780464) (:by |bjmr3HZle) (:text |v)
                                                                      |b $ %{} :Expr (:at 1699981780926) (:by |bjmr3HZle)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1699981780926) (:by |bjmr3HZle) (:text |&map:get)
                                                                          |b $ %{} :Leaf (:at 1699981780926) (:by |bjmr3HZle) (:text |item)
                                                                          |h $ %{} :Leaf (:at 1699981780926) (:by |bjmr3HZle) (:text |:value)
                                                              |T $ %{} :Expr (:at 1699981782818) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1699981783268) (:by |bjmr3HZle) (:text |if)
                                                                  |L $ %{} :Expr (:at 1699981783753) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1700027667108) (:by |bjmr3HZle) (:text |literal?)
                                                                      |b $ %{} :Leaf (:at 1699981786114) (:by |bjmr3HZle) (:text |v)
                                                                  |T $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |<>)
                                                                      |b $ %{} :Leaf (:at 1699981789686) (:by |bjmr3HZle) (:text |v)
                                                                  |b $ %{} :Leaf (:at 1699981791356) (:by |bjmr3HZle) (:text |v)
                  |h $ %{} :Expr (:at 1678305439112) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1678305440665) (:by |bjmr3HZle) (:text |if)
                      |b $ %{} :Expr (:at 1678305440961) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678305441691) (:by |bjmr3HZle) (:text |some?)
                          |b $ %{} :Leaf (:at 1678305442501) (:by |bjmr3HZle) (:text |title)
                      |h $ %{} :Expr (:at 1678305444078) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678305445277) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1678305445586) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305445873) (:by |bjmr3HZle) (:text |{})
                          |h $ %{} :Expr (:at 1678305450271) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1678305450958) (:by |bjmr3HZle) (:text |div)
                              |L $ %{} :Expr (:at 1678305451224) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1678305451528) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1678305482597) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1678305487893) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1678305499040) (:by |bjmr3HZle)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1678305510236) (:by |bjmr3HZle) (:text |str-spaced)
                                          |L $ %{} :Leaf (:at 1678305506543) (:by |bjmr3HZle) (:text |style-attributes-title)
                                          |T $ %{} :Expr (:at 1678305489615) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1678305491268) (:by |bjmr3HZle) (:text |&map:get)
                                              |b $ %{} :Leaf (:at 1678305493281) (:by |bjmr3HZle) (:text |options)
                                              |h $ %{} :Leaf (:at 1678305495711) (:by |bjmr3HZle) (:text |:css-title)
                              |T $ %{} :Expr (:at 1678305447286) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1678305448269) (:by |bjmr3HZle) (:text |<>)
                                  |b $ %{} :Leaf (:at 1678305449664) (:by |bjmr3HZle) (:text |title)
                          |l $ %{} :Leaf (:at 1678305452973) (:by |bjmr3HZle) (:text |ret)
                      |l $ %{} :Leaf (:at 1678305454788) (:by |bjmr3HZle) (:text |ret)
        |comp-catoptric-text $ %{} :CodeEntry (:doc "|by \"catoptric text\" I mean text added with CSS content, thus unsearchable from browser search or select. The text can still be grabbed from DOM tree though.")
          :code $ %{} :Expr (:at 1702490308575) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1702490317703) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1702490308575) (:by |bjmr3HZle) (:text |comp-catoptric-text)
              |h $ %{} :Expr (:at 1702490308575) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702490334717) (:by |bjmr3HZle) (:text |text)
                  |X $ %{} :Leaf (:at 1702490337600) (:by |bjmr3HZle) (:text |?)
                  |b $ %{} :Leaf (:at 1702490336111) (:by |bjmr3HZle) (:text |options)
              |l $ %{} :Expr (:at 1702490750976) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1702490754466) (:by |bjmr3HZle) (:text |[])
                  |L $ %{} :Expr (:at 1702490755838) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702490766808) (:by |bjmr3HZle) (:text |effect-dataset-text)
                      |b $ %{} :Leaf (:at 1702490767991) (:by |bjmr3HZle) (:text |text)
                  |T $ %{} :Expr (:at 1702490338947) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702490345981) (:by |bjmr3HZle) (:text |span)
                      |b $ %{} :Expr (:at 1702490347307) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702490347662) (:by |bjmr3HZle) (:text |{})
                          |X $ %{} :Expr (:at 1702490352479) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702490354022) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Expr (:at 1702490411973) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1702490414584) (:by |bjmr3HZle) (:text |str-spaced)
                                  |T $ %{} :Leaf (:at 1702490359287) (:by |bjmr3HZle) (:text |style-catoptric)
                                  |b $ %{} :Expr (:at 1702490416395) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702490416798) (:by |bjmr3HZle) (:text |get)
                                      |b $ %{} :Leaf (:at 1702490428635) (:by |bjmr3HZle) (:text |options)
                                      |h $ %{} :Leaf (:at 1702490420539) (:by |bjmr3HZle) (:text |:class-name)
                          |Y $ %{} :Expr (:at 1702490422462) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702490423416) (:by |bjmr3HZle) (:text |:style)
                              |b $ %{} :Expr (:at 1702490423653) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702490424227) (:by |bjmr3HZle) (:text |get)
                                  |b $ %{} :Leaf (:at 1702490425115) (:by |bjmr3HZle) (:text |options)
                                  |h $ %{} :Leaf (:at 1702490426996) (:by |bjmr3HZle) (:text |:style)
        |comp-cirru-snippet $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1593161556909) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1593161560305) (:by |bjmr3HZle) (:text |defcomp)
              |j $ %{} :Leaf (:at 1695746203264) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
              |r $ %{} :Expr (:at 1593161556909) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1593161566336) (:by |bjmr3HZle) (:text |text)
                  |b $ %{} :Leaf (:at 1704535271114) (:by |bjmr3HZle) (:text |?)
                  |j $ %{} :Leaf (:at 1704534963897) (:by |bjmr3HZle) (:text |options)
              |v $ %{} :Expr (:at 1593161567991) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1593161568559) (:by |bjmr3HZle) (:text |div)
                  |j $ %{} :Expr (:at 1593161568734) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1593161569113) (:by |bjmr3HZle) (:text |{})
                      |f $ %{} :Expr (:at 1651248364126) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651248366396) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Expr (:at 1699981992811) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1699981994815) (:by |bjmr3HZle) (:text |str-spaced)
                              |L $ %{} :Leaf (:at 1699981996950) (:by |bjmr3HZle) (:text |css/row)
                              |T $ %{} :Leaf (:at 1651248378515) (:by |bjmr3HZle) (:text |css-snippet)
                              |b $ %{} :Expr (:at 1704534972483) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1704534973598) (:by |bjmr3HZle) (:text |get)
                                  |b $ %{} :Leaf (:at 1704535152617) (:by |bjmr3HZle) (:text |options)
                                  |h $ %{} :Leaf (:at 1704534976147) (:by |bjmr3HZle) (:text |:class-name)
                      |r $ %{} :Expr (:at 1593161579964) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1593161581563) (:by |bjmr3HZle) (:text |:style)
                          |j $ %{} :Expr (:at 1704534965813) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1704534966658) (:by |bjmr3HZle) (:text |get)
                              |L $ %{} :Leaf (:at 1704534967095) (:by |bjmr3HZle) (:text |options)
                              |T $ %{} :Leaf (:at 1704534968705) (:by |bjmr3HZle) (:text |:style)
                  |r $ %{} :Expr (:at 1593161962470) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1644509679567) (:by |bjmr3HZle) (:text |pre)
                      |j $ %{} :Expr (:at 1644509685930) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1644509686908) (:by |bjmr3HZle) (:text |{})
                          |L $ %{} :Expr (:at 1699981999124) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1699982001579) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1699982005231) (:by |bjmr3HZle) (:text |css/expand)
                          |T $ %{} :Expr (:at 1644509687460) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1644509691389) (:by |bjmr3HZle) (:text |:innerHTML)
                              |T $ %{} :Expr (:at 1644509721979) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1644509722599) (:by |bjmr3HZle) (:text |generateHtml)
                                  |T $ %{} :Leaf (:at 1593161963758) (:by |bjmr3HZle) (:text |text)
                  |t $ %{} :Expr (:at 1703010308877) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1703010311491) (:by |bjmr3HZle) (:text |span)
                      |L $ %{} :Expr (:at 1703010312196) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703010312480) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1703010312892) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703010318011) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1703010332961) (:by |bjmr3HZle) (:text |style-copy-wrapper)
                      |T $ %{} :Expr (:at 1696701087648) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696701094815) (:by |bjmr3HZle) (:text |comp-copy)
                          |X $ %{} :Leaf (:at 1703009964130) (:by |bjmr3HZle) (:text |text)
                          |b $ %{} :Expr (:at 1696701728619) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701728619) (:by |bjmr3HZle) (:text |fn)
                              |b $ %{} :Expr (:at 1696701728619) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703010195980) (:by |bjmr3HZle) (:text |e)
                                  |b $ %{} :Leaf (:at 1703010196624) (:by |bjmr3HZle) (:text |d!)
                              |h $ %{} :Expr (:at 1696701728619) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696701728619) (:by |bjmr3HZle) (:text |copy!)
                                  |b $ %{} :Leaf (:at 1703009968857) (:by |bjmr3HZle) (:text |text)
        |comp-close $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1702317145066) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1702317149413) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1702317145066) (:by |bjmr3HZle) (:text |comp-close)
              |h $ %{} :Expr (:at 1702317145066) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1702317157796) (:by |bjmr3HZle) (:text |?)
                  |T $ %{} :Leaf (:at 1702317151954) (:by |bjmr3HZle) (:text |options)
              |o $ %{} :Expr (:at 1702317180822) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702317183162) (:by |bjmr3HZle) (:text |span)
                  |b $ %{} :Expr (:at 1702317183454) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702317183801) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1702317184149) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317185804) (:by |bjmr3HZle) (:text |:inner-text)
                          |b $ %{} :Leaf (:at 1702317402782) (:by |bjmr3HZle) (:text "|\"✕")
                      |h $ %{} :Expr (:at 1702317212025) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317214524) (:by |bjmr3HZle) (:text |:style)
                          |b $ %{} :Expr (:at 1702317217422) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317217422) (:by |bjmr3HZle) (:text |get)
                              |b $ %{} :Leaf (:at 1702317217422) (:by |bjmr3HZle) (:text |options)
                              |h $ %{} :Leaf (:at 1702317220802) (:by |bjmr3HZle) (:text |:style)
                      |l $ %{} :Expr (:at 1702317212025) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317225345) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Expr (:at 1702317230781) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1702317234733) (:by |bjmr3HZle) (:text |str-spaced)
                              |L $ %{} :Leaf (:at 1702317237057) (:by |bjmr3HZle) (:text |style-close)
                              |T $ %{} :Expr (:at 1702317217422) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702317217422) (:by |bjmr3HZle) (:text |get)
                                  |b $ %{} :Leaf (:at 1702317217422) (:by |bjmr3HZle) (:text |options)
                                  |h $ %{} :Leaf (:at 1702317228996) (:by |bjmr3HZle) (:text |:class-name)
                      |o $ %{} :Expr (:at 1702317252527) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317254073) (:by |bjmr3HZle) (:text |:on-click)
                          |b $ %{} :Expr (:at 1702317258066) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317258480) (:by |bjmr3HZle) (:text |get)
                              |b $ %{} :Leaf (:at 1702317260083) (:by |bjmr3HZle) (:text |options)
                              |h $ %{} :Leaf (:at 1702317262764) (:by |bjmr3HZle) (:text |:on-click)
        |comp-copy $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696701096431) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1696701097878) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1696701096431) (:by |bjmr3HZle) (:text |comp-copy)
              |h $ %{} :Expr (:at 1696701096431) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1703009999286) (:by |bjmr3HZle) (:text |code)
                  |L $ %{} :Leaf (:at 1703010065817) (:by |bjmr3HZle) (:text |?)
                  |T $ %{} :Leaf (:at 1696701732753) (:by |bjmr3HZle) (:text |f)
              |l $ %{} :Expr (:at 1696701100285) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696701100804) (:by |bjmr3HZle) (:text |div)
                  |b $ %{} :Expr (:at 1696701101139) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696701101468) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1696701132055) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696701136429) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Expr (:at 1696701518858) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1696701523933) (:by |bjmr3HZle) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1696701519766) (:by |bjmr3HZle) (:text |style-copy-outline)
                              |b $ %{} :Leaf (:at 1696701520406) (:by |bjmr3HZle) (:text |style-copy-container)
                      |h $ %{} :Expr (:at 1696701738627) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696701740545) (:by |bjmr3HZle) (:text |:on-click)
                          |b $ %{} :Expr (:at 1703010213934) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1703010214913) (:by |bjmr3HZle) (:text |either)
                              |L $ %{} :Leaf (:at 1703010215785) (:by |bjmr3HZle) (:text |f)
                              |T $ %{} :Expr (:at 1696701740830) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696701741069) (:by |bjmr3HZle) (:text |fn)
                                  |b $ %{} :Expr (:at 1696701743860) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696701744443) (:by |bjmr3HZle) (:text |e)
                                      |b $ %{} :Leaf (:at 1696701745193) (:by |bjmr3HZle) (:text |d!)
                                  |h $ %{} :Expr (:at 1703010219391) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703010219391) (:by |bjmr3HZle) (:text |copy!)
                                      |b $ %{} :Leaf (:at 1703010219391) (:by |bjmr3HZle) (:text |code)
                  |h $ %{} :Expr (:at 1696701102289) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696701102974) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1696701103318) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696701105788) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1696701214119) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701215659) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1696701217338) (:by |bjmr3HZle) (:text |style-copy-outline)
                          |h $ %{} :Expr (:at 1696701220447) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701221558) (:by |bjmr3HZle) (:text |:style)
                              |b $ %{} :Expr (:at 1696701221880) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696701222264) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1696701222913) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696701332420) (:by |bjmr3HZle) (:text |:top)
                                      |b $ %{} :Leaf (:at 1703010450356) (:by |bjmr3HZle) (:text |-5)
                                  |h $ %{} :Expr (:at 1696701228663) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696701360409) (:by |bjmr3HZle) (:text |:right)
                                      |b $ %{} :Leaf (:at 1703010456022) (:by |bjmr3HZle) (:text |-2)
        |comp-placeholder $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1592799104566) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1592799104566) (:by |bjmr3HZle) (:text |defcomp)
              |j $ %{} :Leaf (:at 1592799104566) (:by |bjmr3HZle) (:text |comp-placeholder)
              |r $ %{} :Expr (:at 1592799104566) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1592799104566) (:by |bjmr3HZle) (:text |text)
              |v $ %{} :Expr (:at 1592799104566) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1592799104566) (:by |bjmr3HZle) (:text |div)
                  |j $ %{} :Expr (:at 1592799104566) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1592799104566) (:by |bjmr3HZle) (:text |{})
                      |j $ %{} :Expr (:at 1592799104566) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651248033341) (:by |bjmr3HZle) (:text |:class-name)
                          |j $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |css-placeholder)
                  |r $ %{} :Expr (:at 1592799104566) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1592799104566) (:by |bjmr3HZle) (:text |<>)
                      |j $ %{} :Leaf (:at 1592799104566) (:by |bjmr3HZle) (:text |text)
        |comp-snippet $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1695746978499) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1695747010205) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1695746978499) (:by |bjmr3HZle) (:text |comp-snippet)
              |h $ %{} :Expr (:at 1695746978499) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695747011535) (:by |bjmr3HZle) (:text |code)
                  |b $ %{} :Leaf (:at 1695747014606) (:by |bjmr3HZle) (:text |?)
                  |h $ %{} :Leaf (:at 1695747015932) (:by |bjmr3HZle) (:text |options)
              |l $ %{} :Expr (:at 1696700721430) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1696700722238) (:by |bjmr3HZle) (:text |div)
                  |L $ %{} :Expr (:at 1696700723197) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696700723519) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1696700733437) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696700736326) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Expr (:at 1696700746197) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1696700749415) (:by |bjmr3HZle) (:text |str-spaced)
                              |L $ %{} :Leaf (:at 1699981914391) (:by |bjmr3HZle) (:text |css/row)
                              |T $ %{} :Leaf (:at 1696700747140) (:by |bjmr3HZle) (:text |css-snippet)
                              |X $ %{} :Expr (:at 1696700779277) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696700780936) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1696700782154) (:by |bjmr3HZle) (:text |options)
                  |T $ %{} :Expr (:at 1695747007292) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695747065908) (:by |bjmr3HZle) (:text |pre)
                      |b $ %{} :Expr (:at 1695747007292) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747007292) (:by |bjmr3HZle) (:text |{})
                          |a $ %{} :Expr (:at 1699981921225) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1699981923209) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1699981926163) (:by |bjmr3HZle) (:text |css/expand)
                          |h $ %{} :Expr (:at 1695747007292) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747007292) (:by |bjmr3HZle) (:text |:style)
                              |b $ %{} :Expr (:at 1695747029613) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1704535175717) (:by |bjmr3HZle) (:text |:style)
                                  |b $ %{} :Leaf (:at 1695747030895) (:by |bjmr3HZle) (:text |options)
                          |l $ %{} :Expr (:at 1695747073442) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747073442) (:by |bjmr3HZle) (:text |:inner-text)
                              |b $ %{} :Leaf (:at 1695747151171) (:by |bjmr3HZle) (:text |code)
                  |b $ %{} :Expr (:at 1703010361323) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1703010362581) (:by |bjmr3HZle) (:text |span)
                      |L $ %{} :Expr (:at 1703010362959) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703010362959) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1703010362959) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703010362959) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1703010362959) (:by |bjmr3HZle) (:text |style-copy-wrapper)
                      |T $ %{} :Expr (:at 1696701047696) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696701052143) (:by |bjmr3HZle) (:text |comp-copy)
                          |X $ %{} :Leaf (:at 1703009980449) (:by |bjmr3HZle) (:text |code)
                          |b $ %{} :Expr (:at 1696701700544) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701700914) (:by |bjmr3HZle) (:text |fn)
                              |b $ %{} :Expr (:at 1696701706898) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703010206615) (:by |bjmr3HZle) (:text |e)
                                  |b $ %{} :Leaf (:at 1703010207342) (:by |bjmr3HZle) (:text |d!)
                              |h $ %{} :Expr (:at 1696701711871) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696701714738) (:by |bjmr3HZle) (:text |copy!)
                                  |b $ %{} :Leaf (:at 1696701717588) (:by |bjmr3HZle) (:text |code)
        |comp-tabs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |defcomp)
              |j $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |comp-tabs)
              |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1592799778467) (:by |bjmr3HZle) (:text |options)
                  |j $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |tabs)
                  |r $ %{} :Leaf (:at 1592799303204) (:by |bjmr3HZle) (:text |on-route)
              |v $ %{} :Expr (:at 1702404733200) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1702404733784) (:by |bjmr3HZle) (:text |let)
                  |L $ %{} :Expr (:at 1702404734044) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Expr (:at 1702404734206) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702404736136) (:by |bjmr3HZle) (:text |selected)
                          |b $ %{} :Expr (:at 1702404738439) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702404738439) (:by |bjmr3HZle) (:text |:selected)
                              |b $ %{} :Leaf (:at 1702404738439) (:by |bjmr3HZle) (:text |options)
                      |b $ %{} :Expr (:at 1702405635908) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702405638049) (:by |bjmr3HZle) (:text |vertical?)
                          |b $ %{} :Expr (:at 1702405638477) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702405638477) (:by |bjmr3HZle) (:text |:vertical?)
                              |b $ %{} :Leaf (:at 1702405638477) (:by |bjmr3HZle) (:text |options)
                  |T $ %{} :Expr (:at 1702404384789) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1702404386534) (:by |bjmr3HZle) (:text |[])
                      |L $ %{} :Expr (:at 1702404387752) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702404396969) (:by |bjmr3HZle) (:text |effect-tab-highlight)
                          |b $ %{} :Leaf (:at 1702404740440) (:by |bjmr3HZle) (:text |selected)
                          |h $ %{} :Leaf (:at 1702405653254) (:by |bjmr3HZle) (:text |vertical?)
                      |T $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702404373304) (:by |bjmr3HZle) (:text |div)
                          |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1651248083054) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248087603) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1702404206612) (:by |bjmr3HZle)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1702404208480) (:by |bjmr3HZle) (:text |str-spaced)
                                      |L $ %{} :Leaf (:at 1702405295275) (:by |bjmr3HZle) (:text |style-tabs)
                                      |T $ %{} :Expr (:at 1651248089742) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651248089742) (:by |bjmr3HZle) (:text |if)
                                          |b $ %{} :Leaf (:at 1702405641405) (:by |bjmr3HZle) (:text |vertical?)
                                          |h $ %{} :Leaf (:at 1651248197750) (:by |bjmr3HZle) (:text |css/column)
                                          |l $ %{} :Leaf (:at 1651248211154) (:by |bjmr3HZle) (:text |css/row)
                                      |b $ %{} :Expr (:at 1702404212717) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702404213162) (:by |bjmr3HZle) (:text |get)
                                          |b $ %{} :Leaf (:at 1702404214539) (:by |bjmr3HZle) (:text |options)
                                          |h $ %{} :Leaf (:at 1702404217038) (:by |bjmr3HZle) (:text |:class-name)
                              |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:style)
                                  |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |merge)
                                      |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |{})
                                          |r $ %{} :Expr (:at 1592800386993) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1592800388420) (:by |bjmr3HZle) (:text |:width)
                                              |j $ %{} :Expr (:at 1592800389116) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1592800389837) (:by |bjmr3HZle) (:text |:width)
                                                  |j $ %{} :Leaf (:at 1592800391265) (:by |bjmr3HZle) (:text |options)
                                      |v $ %{} :Expr (:at 1592799814864) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702404222158) (:by |bjmr3HZle) (:text |get)
                                          |j $ %{} :Leaf (:at 1592799817864) (:by |bjmr3HZle) (:text |options)
                                          |n $ %{} :Leaf (:at 1702404222927) (:by |bjmr3HZle) (:text |:style)
                          |l $ %{} :Expr (:at 1702404314942) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702404316188) (:by |bjmr3HZle) (:text |div)
                              |b $ %{} :Expr (:at 1702404316490) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702404316824) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1702404319253) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702404324279) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1702576331686) (:by |bjmr3HZle)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1702576337382) (:by |bjmr3HZle) (:text |str-spaced)
                                          |P $ %{} :Leaf (:at 1702576431320) (:by |bjmr3HZle) (:text |style-tab-highlight)
                                          |b $ %{} :Expr (:at 1702576442719) (:by |bjmr3HZle)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1702576443346) (:by |bjmr3HZle) (:text |if)
                                              |L $ %{} :Leaf (:at 1702576445312) (:by |bjmr3HZle) (:text |vertical?)
                                              |T $ %{} :Leaf (:at 1702576345857) (:by |bjmr3HZle) (:text |style-tab-vertical-highlight)
                          |n $ %{} :Leaf (:at 1702404296471) (:by |bjmr3HZle) (:text |&)
                          |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1619548188082) (:by |bjmr3HZle) (:text |->)
                              |j $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |tabs)
                              |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |map)
                                  |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |fn)
                                      |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |info)
                                      |r $ %{} :Expr (:at 1702404768514) (:by |bjmr3HZle)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1702404769844) (:by |bjmr3HZle) (:text |let)
                                          |L $ %{} :Expr (:at 1702404770104) (:by |bjmr3HZle)
                                            :data $ {}
                                              |D $ %{} :Expr (:at 1704821486966) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1704821488327) (:by |bjmr3HZle) (:text |item)
                                                  |b $ %{} :Expr (:at 1704821490054) (:by |bjmr3HZle)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1704821490863) (:by |bjmr3HZle) (:text |cond)
                                                      |b $ %{} :Expr (:at 1704821491237) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1704821491786) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1704821494287) (:by |bjmr3HZle) (:text |tuple?)
                                                              |b $ %{} :Leaf (:at 1704821496127) (:by |bjmr3HZle) (:text |info)
                                                          |b $ %{} :Leaf (:at 1704821497914) (:by |bjmr3HZle) (:text |info)
                                                      |h $ %{} :Expr (:at 1704821499737) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1704821501125) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1704821501818) (:by |bjmr3HZle) (:text |map?)
                                                              |b $ %{} :Leaf (:at 1704821502973) (:by |bjmr3HZle) (:text |info)
                                                          |b $ %{} :Expr (:at 1704821503630) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1704821504328) (:by |bjmr3HZle) (:text |::)
                                                              |b $ %{} :Leaf (:at 1704821508496) (:by |bjmr3HZle) (:text |:tab)
                                                              |h $ %{} :Expr (:at 1704821529724) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1704821530768) (:by |bjmr3HZle) (:text |or)
                                                                  |T $ %{} :Expr (:at 1704821513549) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |H $ %{} :Leaf (:at 1704821524847) (:by |bjmr3HZle) (:text |&map:get)
                                                                      |b $ %{} :Leaf (:at 1704821513549) (:by |bjmr3HZle) (:text |info)
                                                                      |h $ %{} :Leaf (:at 1704821525958) (:by |bjmr3HZle) (:text |:value)
                                                                  |b $ %{} :Expr (:at 1704821513549) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |H $ %{} :Leaf (:at 1704821524847) (:by |bjmr3HZle) (:text |&map:get)
                                                                      |b $ %{} :Leaf (:at 1704821513549) (:by |bjmr3HZle) (:text |info)
                                                                      |h $ %{} :Leaf (:at 1704821535991) (:by |bjmr3HZle) (:text |:name)
                                                              |l $ %{} :Expr (:at 1704821541861) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1704821541861) (:by |bjmr3HZle) (:text |or)
                                                                  |b $ %{} :Expr (:at 1704821541861) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |5 $ %{} :Leaf (:at 1704821547268) (:by |bjmr3HZle) (:text |&map:get)
                                                                      |D $ %{} :Leaf (:at 1704821545423) (:by |bjmr3HZle) (:text |info)
                                                                      |T $ %{} :Leaf (:at 1704821541861) (:by |bjmr3HZle) (:text |:display)
                                                                  |h $ %{} :Expr (:at 1704821541861) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |5 $ %{} :Leaf (:at 1704821551632) (:by |bjmr3HZle) (:text |&map:get)
                                                                      |D $ %{} :Leaf (:at 1704821549545) (:by |bjmr3HZle) (:text |info)
                                                                      |T $ %{} :Leaf (:at 1704821541861) (:by |bjmr3HZle) (:text |:title)
                                                      |l $ %{} :Expr (:at 1704821554160) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1704821555954) (:by |bjmr3HZle) (:text |true)
                                                          |b $ %{} :Expr (:at 1704821557276) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1704821557781) (:by |bjmr3HZle) (:text |raise)
                                                              |b $ %{} :Leaf (:at 1704821565196) (:by |bjmr3HZle) (:text "|\"Unknown tab value")
                                          |T $ %{} :Expr (:at 1704821576545) (:by |bjmr3HZle)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1704821581417) (:by |bjmr3HZle) (:text |tag-match)
                                              |L $ %{} :Leaf (:at 1704821581953) (:by |bjmr3HZle) (:text |item)
                                              |T $ %{} :Expr (:at 1704821582772) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |D $ %{} :Expr (:at 1704821583499) (:by |bjmr3HZle)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1704821586041) (:by |bjmr3HZle) (:text |:tab)
                                                      |b $ %{} :Leaf (:at 1704821610476) (:by |bjmr3HZle) (:text |value)
                                                      |h $ %{} :Leaf (:at 1704821612338) (:by |bjmr3HZle) (:text |display)
                                                  |T $ %{} :Expr (:at 1704821601029) (:by |bjmr3HZle)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1704821601798) (:by |bjmr3HZle) (:text |let)
                                                      |L $ %{} :Expr (:at 1704821603084) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1704821605347) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1704821605347) (:by |bjmr3HZle) (:text |selected?)
                                                              |b $ %{} :Expr (:at 1704821605347) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1704821605347) (:by |bjmr3HZle) (:text |=)
                                                                  |b $ %{} :Leaf (:at 1704821605347) (:by |bjmr3HZle) (:text |selected)
                                                                  |h $ %{} :Leaf (:at 1704821617547) (:by |bjmr3HZle) (:text |value)
                                                      |T $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |div)
                                                          |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |{})
                                                              |b $ %{} :Expr (:at 1651248124487) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1651248129502) (:by |bjmr3HZle) (:text |:class-name)
                                                                  |b $ %{} :Expr (:at 1702404185930) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1702404188305) (:by |bjmr3HZle) (:text |str-spaced)
                                                                      |T $ %{} :Leaf (:at 1651248132145) (:by |bjmr3HZle) (:text |css-tab)
                                                                      |b $ %{} :Expr (:at 1702404189423) (:by |bjmr3HZle)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1702404191745) (:by |bjmr3HZle) (:text |get)
                                                                          |b $ %{} :Leaf (:at 1702404192732) (:by |bjmr3HZle) (:text |options)
                                                                          |h $ %{} :Leaf (:at 1702405842836) (:by |bjmr3HZle) (:text |:tab-class-name)
                                                                      |h $ %{} :Expr (:at 1702404756644) (:by |bjmr3HZle)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1702404758022) (:by |bjmr3HZle) (:text |if)
                                                                          |b $ %{} :Leaf (:at 1702404777908) (:by |bjmr3HZle) (:text |selected?)
                                                                          |h $ %{} :Leaf (:at 1702404784441) (:by |bjmr3HZle) (:text |style-selected-tab)
                                                              |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:style)
                                                                  |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |merge)
                                                                      |n $ %{} :Expr (:at 1645115709994) (:by |bjmr3HZle)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1645115715023) (:by |bjmr3HZle) (:text |:tab-style)
                                                                          |b $ %{} :Leaf (:at 1645115717877) (:by |bjmr3HZle) (:text |options)
                                                                      |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |if)
                                                                          |j $ %{} :Leaf (:at 1702404775508) (:by |bjmr3HZle) (:text |selected?)
                                                                          |r $ %{} :Expr (:at 1645115726755) (:by |bjmr3HZle)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1645115736116) (:by |bjmr3HZle) (:text |:selected-tab-style)
                                                                              |b $ %{} :Leaf (:at 1645115737055) (:by |bjmr3HZle) (:text |options)
                                                              |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:on-click)
                                                                  |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |fn)
                                                                      |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |e)
                                                                          |j $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |d!)
                                                                      |v $ %{} :Expr (:at 1592799308117) (:by |bjmr3HZle)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1592799309439) (:by |bjmr3HZle) (:text |on-route)
                                                                          |j $ %{} :Leaf (:at 1704821631348) (:by |bjmr3HZle) (:text |item)
                                                                          |r $ %{} :Leaf (:at 1592799313113) (:by |bjmr3HZle) (:text |d!)
                                                          |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |<>)
                                                              |b $ %{} :Leaf (:at 1704821621993) (:by |bjmr3HZle) (:text |display)
        |comp-tag $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700586762229) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1700586764928) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1700586762229) (:by |bjmr3HZle) (:text |comp-tag)
              |h $ %{} :Expr (:at 1700586762229) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700586769880) (:by |bjmr3HZle) (:text |kind)
                  |b $ %{} :Leaf (:at 1700586776061) (:by |bjmr3HZle) (:text |content)
                  |h $ %{} :Leaf (:at 1700586778262) (:by |bjmr3HZle) (:text |?)
                  |l $ %{} :Leaf (:at 1700586780037) (:by |bjmr3HZle) (:text |options)
              |l $ %{} :Expr (:at 1700586781646) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700586782310) (:by |bjmr3HZle) (:text |div)
                  |b $ %{} :Expr (:at 1700586782564) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700586783687) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1700586784221) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700586791336) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Expr (:at 1700587296860) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1700587298878) (:by |bjmr3HZle) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1700586807139) (:by |bjmr3HZle) (:text |style-tag)
                              |b $ %{} :Expr (:at 1700587309379) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587302390) (:by |bjmr3HZle) (:text |case-default)
                                  |b $ %{} :Leaf (:at 1700587310178) (:by |bjmr3HZle) (:text |kind)
                                  |h $ %{} :Leaf (:at 1700587311919) (:by |bjmr3HZle) (:text |nil)
                                  |l $ %{} :Expr (:at 1700587312296) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700587314207) (:by |bjmr3HZle) (:text |:info)
                                      |b $ %{} :Leaf (:at 1700587319663) (:by |bjmr3HZle) (:text |style-tag-info)
                                  |m $ %{} :Expr (:at 1700587312296) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700587785967) (:by |bjmr3HZle) (:text |:success)
                                      |b $ %{} :Leaf (:at 1700587788564) (:by |bjmr3HZle) (:text |style-tag-success)
                                  |o $ %{} :Expr (:at 1700587312296) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700587331126) (:by |bjmr3HZle) (:text |:warning)
                                      |b $ %{} :Leaf (:at 1700587370242) (:by |bjmr3HZle) (:text |style-tag-warning)
                                  |q $ %{} :Expr (:at 1700587312296) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700587329304) (:by |bjmr3HZle) (:text |:error)
                                      |b $ %{} :Leaf (:at 1700587377109) (:by |bjmr3HZle) (:text |style-tag-error)
                              |h $ %{} :Expr (:at 1700587675695) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587679762) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1700587681030) (:by |bjmr3HZle) (:text |options)
                      |h $ %{} :Expr (:at 1700587682653) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700587683594) (:by |bjmr3HZle) (:text |:style)
                          |b $ %{} :Expr (:at 1700587685387) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587690380) (:by |bjmr3HZle) (:text |:style)
                              |b $ %{} :Leaf (:at 1700587688167) (:by |bjmr3HZle) (:text |options)
                      |l $ %{} :Expr (:at 1700587833360) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700587834681) (:by |bjmr3HZle) (:text |:on-click)
                          |b $ %{} :Expr (:at 1702227952113) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1702227965606) (:by |bjmr3HZle) (:text |either)
                              |T $ %{} :Expr (:at 1700587835002) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587838102) (:by |bjmr3HZle) (:text |:on-click)
                                  |b $ %{} :Leaf (:at 1700587839853) (:by |bjmr3HZle) (:text |options)
                              |b $ %{} :Expr (:at 1702227966824) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702227967113) (:by |bjmr3HZle) (:text |fn)
                                  |b $ %{} :Expr (:at 1702227967389) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702227967573) (:by |bjmr3HZle) (:text |e)
                                      |b $ %{} :Leaf (:at 1702227968380) (:by |bjmr3HZle) (:text |d!)
                  |h $ %{} :Expr (:at 1700586794947) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700586795323) (:by |bjmr3HZle) (:text |<>)
                      |b $ %{} :Leaf (:at 1700586810878) (:by |bjmr3HZle) (:text |content)
        |comp-time $ %{} :CodeEntry (:doc "|pass a time in string(internally handled by dayjs)\n\nif is today, just show the time of today.\nif not today, only show date and week.\n\nneed to be extended in future...")
          :code $ %{} :Expr (:at 1700193896881) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1700193902368) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1700193896881) (:by |bjmr3HZle) (:text |comp-time)
              |h $ %{} :Expr (:at 1700193896881) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700193910150) (:by |bjmr3HZle) (:text |time)
                  |b $ %{} :Leaf (:at 1700194114625) (:by |bjmr3HZle) (:text |&)
                  |h $ %{} :Leaf (:at 1700194115690) (:by |bjmr3HZle) (:text |options)
              |j $ %{} :Expr (:at 1700194203543) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700194206248) (:by |bjmr3HZle) (:text |.!extend)
                  |b $ %{} :Leaf (:at 1700194207231) (:by |bjmr3HZle) (:text |dayjs)
                  |h $ %{} :Leaf (:at 1700194208061) (:by |bjmr3HZle) (:text |is-today)
              |l $ %{} :Expr (:at 1700194145570) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1700194146522) (:by |bjmr3HZle) (:text |let)
                  |L $ %{} :Expr (:at 1700194146760) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Expr (:at 1700202078829) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700202079475) (:by |bjmr3HZle) (:text |now)
                          |b $ %{} :Expr (:at 1700202080071) (:by |bjmr3HZle)
                            :data $ {}
                              |b $ %{} :Leaf (:at 1700202080071) (:by |bjmr3HZle) (:text |dayjs)
                              |h $ %{} :Leaf (:at 1700202266818) (:by |bjmr3HZle) (:text |time)
                      |T $ %{} :Expr (:at 1700194147603) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700194148107) (:by |bjmr3HZle) (:text |mark)
                          |b $ %{} :Expr (:at 1700202056964) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1700202057543) (:by |bjmr3HZle) (:text |if)
                              |L $ %{} :Expr (:at 1700202060485) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700202065246) (:by |bjmr3HZle) (:text |.!isToday)
                                  |b $ %{} :Leaf (:at 1700202081796) (:by |bjmr3HZle) (:text |now)
                              |V $ %{} :Expr (:at 1700202158924) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1700202161492) (:by |bjmr3HZle) (:text |str)
                                  |L $ %{} :Leaf (:at 1700202167930) (:by |bjmr3HZle) (:text "|\"Today ")
                                  |T $ %{} :Expr (:at 1700202142490) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700202144104) (:by |bjmr3HZle) (:text |.!format)
                                      |b $ %{} :Leaf (:at 1700202146371) (:by |bjmr3HZle) (:text |now)
                                      |h $ %{} :Leaf (:at 1700202150321) (:by |bjmr3HZle) (:text "|\"HH:mm")
                              |c $ %{} :Expr (:at 1700202092321) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700202094650) (:by |bjmr3HZle) (:text |.!format)
                                  |b $ %{} :Leaf (:at 1700202105433) (:by |bjmr3HZle) (:text |now)
                                  |h $ %{} :Leaf (:at 1700202132079) (:by |bjmr3HZle) (:text "|\"MM-DD ddd")
                  |T $ %{} :Expr (:at 1700193931370) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700193936412) (:by |bjmr3HZle) (:text |span)
                      |b $ %{} :Expr (:at 1700193937241) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1700193938526) (:by |bjmr3HZle) (:text |{})
                          |L $ %{} :Expr (:at 1700194132127) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700194134262) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1700194136563) (:by |bjmr3HZle) (:text |css/font-fancy)
                          |P $ %{} :Expr (:at 1700202283813) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700202286151) (:by |bjmr3HZle) (:text |:title)
                              |b $ %{} :Leaf (:at 1700202286684) (:by |bjmr3HZle) (:text |time)
                          |T $ %{} :Expr (:at 1700193938942) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1700193940788) (:by |bjmr3HZle) (:text |:inner-text)
                              |P $ %{} :Leaf (:at 1700194144148) (:by |bjmr3HZle) (:text |mark)
                          |b $ %{} :Expr (:at 1700193979093) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700193982668) (:by |bjmr3HZle) (:text |:on-click)
                              |b $ %{} :Expr (:at 1700193982928) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700193983170) (:by |bjmr3HZle) (:text |fn)
                                  |b $ %{} :Expr (:at 1700193983406) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700193983576) (:by |bjmr3HZle) (:text |e)
                                      |b $ %{} :Leaf (:at 1700193984046) (:by |bjmr3HZle) (:text |d!)
                                  |h $ %{} :Expr (:at 1700193984563) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700193988401) (:by |bjmr3HZle) (:text |js/console.log)
                                      |b $ %{} :Leaf (:at 1700193990595) (:by |bjmr3HZle) (:text |:time)
                                      |h $ %{} :Leaf (:at 1700193992179) (:by |bjmr3HZle) (:text |time)
        |css-item-label $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1678305298933) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1678305300241) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1678305298933) (:by |bjmr3HZle) (:text |css-item-label)
              |h $ %{} :Expr (:at 1678305302344) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1678305303520) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1678305304061) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1678305305785) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1678305301758) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1678305301758) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |:font-weight)
                              |b $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |300)
                          |h $ %{} :Expr (:at 1678305301758) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |ui/font-fancy)
                          |l $ %{} :Expr (:at 1678305301758) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |15)
                          |o $ %{} :Expr (:at 1678305301758) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text "|\"14px")
                          |q $ %{} :Expr (:at 1678305301758) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1678305301758) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1678305301758) (:by |bjmr3HZle) (:text |60)
        |css-placeholder $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651248013735) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1651248016160) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |css-placeholder)
              |h $ %{} :Expr (:at 1651248016859) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651248017370) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651248017921) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651248021508) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1651248013735) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |merge)
                          |b $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |ui/center)
                          |h $ %{} :Expr (:at 1651248013735) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1651248013735) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |:padding)
                                  |b $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |16)
                              |h $ %{} :Expr (:at 1651248013735) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |:font-family)
                                  |b $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |ui/font-fancy)
                              |l $ %{} :Expr (:at 1651248013735) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |:color)
                                  |b $ %{} :Expr (:at 1651248013735) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |0)
                                      |h $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |0)
                                      |l $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |80)
                              |o $ %{} :Expr (:at 1651248013735) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |:font-size)
                                  |b $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |12)
                              |q $ %{} :Expr (:at 1651248013735) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |:font-style)
                                  |b $ %{} :Leaf (:at 1651248013735) (:by |bjmr3HZle) (:text |:italic)
        |css-snippet $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651248379072) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1651248380814) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1695746999234) (:by |bjmr3HZle) (:text |css-snippet)
              |h $ %{} :Expr (:at 1651248379072) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651248382234) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1651248382750) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696701017429) (:by |bjmr3HZle) (:text "|\"&")
                      |b $ %{} :Expr (:at 1651248385770) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1651248385770) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |ui/font-code)
                          |h $ %{} :Expr (:at 1651248385770) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |:pre)
                          |l $ %{} :Expr (:at 1651248385770) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |12)
                          |o $ %{} :Expr (:at 1651248385770) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text "|\"20px")
                          |q $ %{} :Expr (:at 1651248385770) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1651248385770) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |40)
                          |s $ %{} :Expr (:at 1651248385770) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |:padding)
                              |b $ %{} :Leaf (:at 1703009515412) (:by |bjmr3HZle) (:text "|\"4px 32px 4px 6px")
                          |t $ %{} :Expr (:at 1651248385770) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |:border)
                              |b $ %{} :Expr (:at 1651248385770) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |str)
                                  |b $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1651248385770) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |0)
                                      |h $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |0)
                                      |l $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |90)
                          |u $ %{} :Expr (:at 1651248385770) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text "|\"4px")
                          |v $ %{} :Expr (:at 1695747078031) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747079784) (:by |bjmr3HZle) (:text |:margin)
                              |b $ %{} :Leaf (:at 1695747080134) (:by |bjmr3HZle) (:text |0)
                          |w $ %{} :Expr (:at 1696700312905) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696700315265) (:by |bjmr3HZle) (:text |:position)
                              |b $ %{} :Leaf (:at 1696700318803) (:by |bjmr3HZle) (:text |:relative)
                  |h $ %{} :Expr (:at 1696701018762) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696701022499) (:by |bjmr3HZle) (:text "|\"& > pre")
                      |b $ %{} :Expr (:at 1696701023765) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696701024161) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1696701024660) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701030005) (:by |bjmr3HZle) (:text |:margin)
                              |b $ %{} :Leaf (:at 1696701030829) (:by |bjmr3HZle) (:text |0)
        |css-tab $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1645115026575) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1651248137671) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1651248118593) (:by |bjmr3HZle) (:text |css-tab)
              |h $ %{} :Expr (:at 1651248138970) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651248139540) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651248140396) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651248142810) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1645115026575) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1645115026575) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |:padding)
                              |b $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text "|\"0 8px")
                          |h $ %{} :Expr (:at 1645115026575) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1645115083438) (:by |bjmr3HZle) (:text |ui/font-normal)
                          |l $ %{} :Expr (:at 1645115026575) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |:font-weight)
                              |b $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |300)
                          |o $ %{} :Expr (:at 1645115026575) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |:pointer)
                          |q $ %{} :Expr (:at 1645115026575) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1645115069247) (:by |bjmr3HZle) (:text |14)
                          |s $ %{} :Expr (:at 1645115026575) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1645115026575) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |70)
                          |t $ %{} :Expr (:at 1645115026575) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645115026575) (:by |bjmr3HZle) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1645115123039) (:by |bjmr3HZle) (:text "|\"24px")
                          |u $ %{} :Expr (:at 1645115272614) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645115276294) (:by |bjmr3HZle) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1645115281450) (:by |bjmr3HZle) (:text "|\"2px")
                  |b $ %{} :Expr (:at 1651248143339) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651248149459) (:by |bjmr3HZle) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1651248150652) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651248151019) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1651248152772) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248156665) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1651248156913) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248157958) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1651248158204) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1651248158455) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1651248159236) (:by |bjmr3HZle) (:text |98)
        |effect-dataset-text $ %{} :CodeEntry (:doc "|Respo does not support dataset from attribute, write with effect")
          :code $ %{} :Expr (:at 1702490779833) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1702490782470) (:by |bjmr3HZle) (:text |defeffect)
              |b $ %{} :Leaf (:at 1702490779833) (:by |bjmr3HZle) (:text |effect-dataset-text)
              |h $ %{} :Expr (:at 1702490779833) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702490784903) (:by |bjmr3HZle) (:text |text)
              |l $ %{} :Expr (:at 1702490785526) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702490787712) (:by |bjmr3HZle) (:text |action)
                  |b $ %{} :Leaf (:at 1702490789592) (:by |bjmr3HZle) (:text |el)
                  |h $ %{} :Leaf (:at 1702490791000) (:by |bjmr3HZle) (:text |at?)
              |o $ %{} :Expr (:at 1702490792013) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702490794788) (:by |bjmr3HZle) (:text |if)
                  |b $ %{} :Expr (:at 1702490795873) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702490796566) (:by |bjmr3HZle) (:text |or)
                      |b $ %{} :Expr (:at 1702490797288) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702490797360) (:by |bjmr3HZle) (:text |=)
                          |b $ %{} :Leaf (:at 1702490799369) (:by |bjmr3HZle) (:text |action)
                          |h $ %{} :Leaf (:at 1702490800298) (:by |bjmr3HZle) (:text |:update)
                      |h $ %{} :Expr (:at 1702490797288) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702490797360) (:by |bjmr3HZle) (:text |=)
                          |b $ %{} :Leaf (:at 1702490799369) (:by |bjmr3HZle) (:text |action)
                          |h $ %{} :Leaf (:at 1702490804330) (:by |bjmr3HZle) (:text |:mount)
                  |h $ %{} :Expr (:at 1702490805711) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702490810130) (:by |bjmr3HZle) (:text |->)
                      |b $ %{} :Leaf (:at 1702490811181) (:by |bjmr3HZle) (:text |el)
                      |h $ %{} :Leaf (:at 1702490814743) (:by |bjmr3HZle) (:text |.-dataset)
                      |j $ %{} :Leaf (:at 1702490829293) (:by |bjmr3HZle) (:text |.-text)
                      |l $ %{} :Expr (:at 1702490817032) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702490822810) (:by |bjmr3HZle) (:text |set!)
                          |b $ %{} :Leaf (:at 1702490831672) (:by |bjmr3HZle) (:text |text)
        |effect-tab-highlight $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1702404401158) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1702404403457) (:by |bjmr3HZle) (:text |defeffect)
              |b $ %{} :Leaf (:at 1702404401158) (:by |bjmr3HZle) (:text |effect-tab-highlight)
              |h $ %{} :Expr (:at 1702404401158) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702404455495) (:by |bjmr3HZle) (:text |selected)
                  |b $ %{} :Leaf (:at 1702405655153) (:by |bjmr3HZle) (:text |vertical?)
              |l $ %{} :Expr (:at 1702404408828) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702404413251) (:by |bjmr3HZle) (:text |action)
                  |b $ %{} :Leaf (:at 1702404416170) (:by |bjmr3HZle) (:text |el)
                  |h $ %{} :Leaf (:at 1702404417041) (:by |bjmr3HZle) (:text |at?)
              |o $ %{} :Expr (:at 1702404690161) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1702405155606) (:by |bjmr3HZle) (:text |when)
                  |L $ %{} :Expr (:at 1702404692245) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702404693487) (:by |bjmr3HZle) (:text |or)
                      |b $ %{} :Expr (:at 1702404693811) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702404693902) (:by |bjmr3HZle) (:text |=)
                          |b $ %{} :Leaf (:at 1702404696660) (:by |bjmr3HZle) (:text |action)
                          |h $ %{} :Leaf (:at 1702404698673) (:by |bjmr3HZle) (:text |:mount)
                      |h $ %{} :Expr (:at 1702404693811) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702404693902) (:by |bjmr3HZle) (:text |=)
                          |b $ %{} :Leaf (:at 1702404696660) (:by |bjmr3HZle) (:text |action)
                          |h $ %{} :Leaf (:at 1702404701921) (:by |bjmr3HZle) (:text |:update)
                  |T $ %{} :Expr (:at 1702405857619) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1702405859999) (:by |bjmr3HZle) (:text |let)
                      |L $ %{} :Expr (:at 1702405862018) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Expr (:at 1702405861703) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702405861703) (:by |bjmr3HZle) (:text |target)
                              |b $ %{} :Expr (:at 1702405861703) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702405861703) (:by |bjmr3HZle) (:text |.!querySelector)
                                  |b $ %{} :Leaf (:at 1702405861703) (:by |bjmr3HZle) (:text |el)
                                  |h $ %{} :Expr (:at 1702405861703) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702405861703) (:by |bjmr3HZle) (:text |str)
                                      |b $ %{} :Leaf (:at 1702405861703) (:by |bjmr3HZle) (:text "|\".")
                                      |h $ %{} :Leaf (:at 1702405861703) (:by |bjmr3HZle) (:text |style-selected-tab)
                          |b $ %{} :Expr (:at 1702406181921) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702406181921) (:by |bjmr3HZle) (:text |cursor)
                              |b $ %{} :Expr (:at 1702406181921) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702406181921) (:by |bjmr3HZle) (:text |.!querySelector)
                                  |b $ %{} :Leaf (:at 1702406181921) (:by |bjmr3HZle) (:text |el)
                                  |h $ %{} :Expr (:at 1702406181921) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702406181921) (:by |bjmr3HZle) (:text |str)
                                      |b $ %{} :Leaf (:at 1702406181921) (:by |bjmr3HZle) (:text "|\".")
                                      |h $ %{} :Leaf (:at 1702406181921) (:by |bjmr3HZle) (:text |style-tab-highlight)
                      |T $ %{} :Expr (:at 1702405863806) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1702405864264) (:by |bjmr3HZle) (:text |if)
                          |L $ %{} :Expr (:at 1702405864704) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702405865482) (:by |bjmr3HZle) (:text |some?)
                              |b $ %{} :Leaf (:at 1702405866967) (:by |bjmr3HZle) (:text |target)
                          |T $ %{} :Expr (:at 1702404799816) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1702404800415) (:by |bjmr3HZle) (:text |let)
                              |L $ %{} :Expr (:at 1702404800616) (:by |bjmr3HZle)
                                :data $ {}
                                  |b $ %{} :Expr (:at 1702404854140) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702404857570) (:by |bjmr3HZle) (:text |left)
                                      |b $ %{} :Expr (:at 1702404936092) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702404936764) (:by |bjmr3HZle) (:text |-)
                                          |b $ %{} :Expr (:at 1702404943032) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1702404945894) (:by |bjmr3HZle) (:text |.-offsetLeft)
                                              |b $ %{} :Leaf (:at 1702404947150) (:by |bjmr3HZle) (:text |target)
                                          |h $ %{} :Leaf (:at 1702406414740) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Expr (:at 1702404964217) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702404965963) (:by |bjmr3HZle) (:text |width)
                                      |b $ %{} :Expr (:at 1702404969272) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702404974579) (:by |bjmr3HZle) (:text |.-clientWidth)
                                          |b $ %{} :Leaf (:at 1702404978261) (:by |bjmr3HZle) (:text |target)
                                  |l $ %{} :Expr (:at 1702404964217) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702576491534) (:by |bjmr3HZle) (:text |height)
                                      |b $ %{} :Expr (:at 1702404969272) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702576494819) (:by |bjmr3HZle) (:text |.-clientHeight)
                                          |b $ %{} :Leaf (:at 1702404978261) (:by |bjmr3HZle) (:text |target)
                              |b $ %{} :Expr (:at 1702405673403) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1702405679033) (:by |bjmr3HZle) (:text |if)
                                  |L $ %{} :Leaf (:at 1702405676255) (:by |bjmr3HZle) (:text |vertical?)
                                  |P $ %{} :Expr (:at 1702405685040) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702405685351) (:by |bjmr3HZle) (:text |do)
                                      |b $ %{} :Expr (:at 1702405688310) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702405688310) (:by |bjmr3HZle) (:text |->)
                                          |b $ %{} :Leaf (:at 1702405688310) (:by |bjmr3HZle) (:text |cursor)
                                          |h $ %{} :Leaf (:at 1702405688310) (:by |bjmr3HZle) (:text |.-style)
                                          |l $ %{} :Leaf (:at 1702405699943) (:by |bjmr3HZle) (:text |.-top)
                                          |o $ %{} :Expr (:at 1702405688310) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1702405688310) (:by |bjmr3HZle) (:text |set!)
                                              |b $ %{} :Expr (:at 1702405688310) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1702405688310) (:by |bjmr3HZle) (:text |str)
                                                  |b $ %{} :Expr (:at 1702405719340) (:by |bjmr3HZle)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1702405722530) (:by |bjmr3HZle) (:text |.-offsetTop)
                                                      |b $ %{} :Leaf (:at 1702405722927) (:by |bjmr3HZle) (:text |target)
                                                  |h $ %{} :Leaf (:at 1702405688310) (:by |bjmr3HZle) (:text "|\"px")
                                      |e $ %{} :Expr (:at 1702405688310) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702405688310) (:by |bjmr3HZle) (:text |->)
                                          |b $ %{} :Leaf (:at 1702405688310) (:by |bjmr3HZle) (:text |cursor)
                                          |h $ %{} :Leaf (:at 1702405688310) (:by |bjmr3HZle) (:text |.-style)
                                          |l $ %{} :Leaf (:at 1702405737574) (:by |bjmr3HZle) (:text |.-bottom)
                                          |o $ %{} :Expr (:at 1702405739820) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1702405740657) (:by |bjmr3HZle) (:text |set!)
                                              |b $ %{} :Expr (:at 1702405744272) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1702405746246) (:by |bjmr3HZle) (:text |str)
                                                  |T $ %{} :Leaf (:at 1702405741467) (:by |bjmr3HZle) (:text |0)
                                                  |b $ %{} :Leaf (:at 1702405747671) (:by |bjmr3HZle) (:text "|\"px")
                                      |h $ %{} :Expr (:at 1702405693124) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702405693124) (:by |bjmr3HZle) (:text |->)
                                          |b $ %{} :Leaf (:at 1702405693124) (:by |bjmr3HZle) (:text |cursor)
                                          |h $ %{} :Leaf (:at 1702405693124) (:by |bjmr3HZle) (:text |.-style)
                                          |l $ %{} :Leaf (:at 1702576497348) (:by |bjmr3HZle) (:text |.-height)
                                          |o $ %{} :Expr (:at 1702405693124) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1702405693124) (:by |bjmr3HZle) (:text |set!)
                                              |b $ %{} :Expr (:at 1702405693124) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1702405693124) (:by |bjmr3HZle) (:text |str)
                                                  |b $ %{} :Leaf (:at 1702576499654) (:by |bjmr3HZle) (:text |height)
                                                  |h $ %{} :Leaf (:at 1702405693124) (:by |bjmr3HZle) (:text "|\"px")
                                  |T $ %{} :Expr (:at 1702405680049) (:by |bjmr3HZle)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1702405680565) (:by |bjmr3HZle) (:text |do)
                                      |T $ %{} :Expr (:at 1702405307190) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702405308883) (:by |bjmr3HZle) (:text |->)
                                          |b $ %{} :Leaf (:at 1702405412026) (:by |bjmr3HZle) (:text |cursor)
                                          |h $ %{} :Leaf (:at 1702405311874) (:by |bjmr3HZle) (:text |.-style)
                                          |l $ %{} :Leaf (:at 1702405315691) (:by |bjmr3HZle) (:text |.-left)
                                          |o $ %{} :Expr (:at 1702405336915) (:by |bjmr3HZle)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1702405340676) (:by |bjmr3HZle) (:text |set!)
                                              |T $ %{} :Expr (:at 1702405450812) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1702405451621) (:by |bjmr3HZle) (:text |str)
                                                  |T $ %{} :Leaf (:at 1702405317423) (:by |bjmr3HZle) (:text |left)
                                                  |b $ %{} :Leaf (:at 1702405452604) (:by |bjmr3HZle) (:text "|\"px")
                                      |b $ %{} :Expr (:at 1702405683992) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702405683992) (:by |bjmr3HZle) (:text |->)
                                          |b $ %{} :Leaf (:at 1702405683992) (:by |bjmr3HZle) (:text |cursor)
                                          |h $ %{} :Leaf (:at 1702405683992) (:by |bjmr3HZle) (:text |.-style)
                                          |l $ %{} :Leaf (:at 1702405683992) (:by |bjmr3HZle) (:text |.-width)
                                          |o $ %{} :Expr (:at 1702405683992) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1702405683992) (:by |bjmr3HZle) (:text |set!)
                                              |b $ %{} :Expr (:at 1702405683992) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1702405683992) (:by |bjmr3HZle) (:text |str)
                                                  |b $ %{} :Leaf (:at 1702405683992) (:by |bjmr3HZle) (:text |width)
                                                  |h $ %{} :Leaf (:at 1702405683992) (:by |bjmr3HZle) (:text "|\"px")
                          |b $ %{} :Expr (:at 1703009823371) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1703009823868) (:by |bjmr3HZle) (:text |if)
                              |L $ %{} :Expr (:at 1703009824529) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1703009825283) (:by |bjmr3HZle) (:text |not)
                                  |T $ %{} :Leaf (:at 1703009824229) (:by |bjmr3HZle) (:text |vertical?)
                              |T $ %{} :Expr (:at 1702406160251) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702406160251) (:by |bjmr3HZle) (:text |->)
                                  |b $ %{} :Leaf (:at 1702406160251) (:by |bjmr3HZle) (:text |cursor)
                                  |h $ %{} :Leaf (:at 1702406160251) (:by |bjmr3HZle) (:text |.-style)
                                  |l $ %{} :Leaf (:at 1702406165761) (:by |bjmr3HZle) (:text |.-width)
                                  |o $ %{} :Expr (:at 1702406160251) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702406160251) (:by |bjmr3HZle) (:text |set!)
                                      |b $ %{} :Expr (:at 1702406160251) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702406160251) (:by |bjmr3HZle) (:text |str)
                                          |b $ %{} :Leaf (:at 1702406160251) (:by |bjmr3HZle) (:text |0)
                                          |h $ %{} :Leaf (:at 1702406160251) (:by |bjmr3HZle) (:text "|\"px")
        |literal? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700027667907) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1700027667907) (:by |bjmr3HZle) (:text |defn)
              |b $ %{} :Leaf (:at 1700027667907) (:by |bjmr3HZle) (:text |literal?)
              |h $ %{} :Expr (:at 1700027667907) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700027667907) (:by |bjmr3HZle) (:text |v)
              |l $ %{} :Expr (:at 1700027669384) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700027669975) (:by |bjmr3HZle) (:text |or)
                  |b $ %{} :Expr (:at 1700027670293) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700027671611) (:by |bjmr3HZle) (:text |string?)
                      |b $ %{} :Leaf (:at 1700027672138) (:by |bjmr3HZle) (:text |v)
                  |e $ %{} :Expr (:at 1700027670293) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700027715633) (:by |bjmr3HZle) (:text |tag?)
                      |b $ %{} :Leaf (:at 1700027672138) (:by |bjmr3HZle) (:text |v)
                  |h $ %{} :Expr (:at 1700027670293) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700027677107) (:by |bjmr3HZle) (:text |number?)
                      |b $ %{} :Leaf (:at 1700027672138) (:by |bjmr3HZle) (:text |v)
                  |l $ %{} :Expr (:at 1700027670293) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700027679603) (:by |bjmr3HZle) (:text |bool?)
                      |b $ %{} :Leaf (:at 1700027672138) (:by |bjmr3HZle) (:text |v)
        |style-attributes-title $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1678305510834) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1678305512060) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1678305510834) (:by |bjmr3HZle) (:text |style-attributes-title)
              |h $ %{} :Expr (:at 1678305510834) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1678305514139) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1678305514572) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1678305518606) (:by |bjmr3HZle) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1678305519623) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678305528370) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1678305529341) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305531373) (:by |bjmr3HZle) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1678305543374) (:by |bjmr3HZle) (:text |18)
                          |h $ %{} :Expr (:at 1678305549285) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305553124) (:by |bjmr3HZle) (:text |:margin-bottom)
                              |b $ %{} :Leaf (:at 1678305557908) (:by |bjmr3HZle) (:text |6)
        |style-catoptric $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1702490376376) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1702490377628) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1702490376376) (:by |bjmr3HZle) (:text |style-catoptric)
              |h $ %{} :Expr (:at 1702490376376) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702490379245) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1702490379604) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702490624902) (:by |bjmr3HZle) (:text "|\"&::before")
                      |b $ %{} :Expr (:at 1702490390425) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702490390739) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702490391029) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702490392807) (:by |bjmr3HZle) (:text |:content)
                              |b $ %{} :Leaf (:at 1702490837494) (:by |bjmr3HZle) (:text "|\"attr(data-text)")
        |style-close $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1702317238455) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1702317242839) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1702317238455) (:by |bjmr3HZle) (:text |style-close)
              |h $ %{} :Expr (:at 1702317238455) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702317243896) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1702317244183) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702317245409) (:by |bjmr3HZle) (:text "|\"&")
                      |b $ %{} :Expr (:at 1702317246212) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317246529) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702317339295) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317340543) (:by |bjmr3HZle) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1702317419126) (:by |bjmr3HZle) (:text |16)
                          |e $ %{} :Expr (:at 1702317353942) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317356306) (:by |bjmr3HZle) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1702317417258) (:by |bjmr3HZle) (:text "|\"16px")
                          |f $ %{} :Expr (:at 1702317353942) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317506627) (:by |bjmr3HZle) (:text |:height)
                              |b $ %{} :Leaf (:at 1702317417258) (:by |bjmr3HZle) (:text "|\"16px")
                          |h $ %{} :Expr (:at 1702317345023) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317347141) (:by |bjmr3HZle) (:text |:font-weight)
                              |b $ %{} :Leaf (:at 1702317347779) (:by |bjmr3HZle) (:text |100)
                          |l $ %{} :Expr (:at 1702317422103) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317424821) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1702317426272) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702317426967) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1702317427675) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1702317428633) (:by |bjmr3HZle) (:text |90)
                                  |l $ %{} :Leaf (:at 1702317434456) (:by |bjmr3HZle) (:text |70)
                          |o $ %{} :Expr (:at 1702317437326) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317439122) (:by |bjmr3HZle) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1702317440035) (:by |bjmr3HZle) (:text |0.5)
                          |q $ %{} :Expr (:at 1702317452153) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317453606) (:by |bjmr3HZle) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1702317454650) (:by |bjmr3HZle) (:text |:pointer)
                          |s $ %{} :Expr (:at 1702317456272) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317460398) (:by |bjmr3HZle) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1702317461909) (:by |bjmr3HZle) (:text "|\"200ms")
                          |t $ %{} :Expr (:at 1702317516232) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317519941) (:by |bjmr3HZle) (:text |:user-select)
                              |b $ %{} :Leaf (:at 1702317522343) (:by |bjmr3HZle) (:text |:none)
                  |h $ %{} :Expr (:at 1702317442386) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702317444717) (:by |bjmr3HZle) (:text "|\"&:hover")
                      |b $ %{} :Expr (:at 1702317445010) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317445295) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702317445583) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317447333) (:by |bjmr3HZle) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1702317447786) (:by |bjmr3HZle) (:text |1)
                  |l $ %{} :Expr (:at 1702317442386) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702317468078) (:by |bjmr3HZle) (:text "|\"&:active")
                      |b $ %{} :Expr (:at 1702317445010) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317445295) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702317445583) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317470126) (:by |bjmr3HZle) (:text |:transform)
                              |b $ %{} :Leaf (:at 1702317528811) (:by |bjmr3HZle) (:text "|\"scale(1.1)")
                          |h $ %{} :Expr (:at 1702317537647) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317537647) (:by |bjmr3HZle) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1702317539150) (:by |bjmr3HZle) (:text "|\"0ms")
        |style-copy-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696701413930) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1696701415726) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1696701413930) (:by |bjmr3HZle) (:text |style-copy-container)
              |h $ %{} :Expr (:at 1696701413930) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696701416716) (:by |bjmr3HZle) (:text |{})
                  |X $ %{} :Expr (:at 1703010538422) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1703010539693) (:by |bjmr3HZle) (:text "|\"&")
                      |b $ %{} :Expr (:at 1703010541130) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1703010541613) (:by |bjmr3HZle) (:text |{})
                          |T $ %{} :Expr (:at 1703010540368) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703010540368) (:by |bjmr3HZle) (:text |:display)
                              |b $ %{} :Leaf (:at 1703010540368) (:by |bjmr3HZle) (:text |:inline-block)
                          |b $ %{} :Expr (:at 1703010573411) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703010575474) (:by |bjmr3HZle) (:text |:margin)
                              |b $ %{} :Leaf (:at 1703010595996) (:by |bjmr3HZle) (:text "|\"0 8px 0 4px")
                  |b $ %{} :Expr (:at 1696701417372) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696701446489) (:by |bjmr3HZle) (:text "|\"&:hover")
                      |b $ %{} :Expr (:at 1696701418688) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696701418995) (:by |bjmr3HZle) (:text |{})
                          |X $ %{} :Expr (:at 1696701537721) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701541247) (:by |bjmr3HZle) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1696701545463) (:by |bjmr3HZle) (:text "|\"200ms")
                          |b $ %{} :Expr (:at 1696701419325) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701440400) (:by |bjmr3HZle) (:text |:transform)
                              |b $ %{} :Leaf (:at 1696701533810) (:by |bjmr3HZle) (:text "|\"scale(1.06)")
        |style-copy-outline $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696701144517) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1696701146135) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1696701144517) (:by |bjmr3HZle) (:text |style-copy-outline)
              |h $ %{} :Expr (:at 1696701144517) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696701150710) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1696701151213) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696701151983) (:by |bjmr3HZle) (:text "|\"&")
                      |b $ %{} :Expr (:at 1696701152365) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696701152706) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1696701154209) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701160934) (:by |bjmr3HZle) (:text |:position)
                              |b $ %{} :Leaf (:at 1703010381601) (:by |bjmr3HZle) (:text |:relative)
                          |o $ %{} :Expr (:at 1696701168565) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701306674) (:by |bjmr3HZle) (:text |:width)
                              |b $ %{} :Leaf (:at 1702228070226) (:by |bjmr3HZle) (:text |12)
                          |q $ %{} :Expr (:at 1696701173045) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701174222) (:by |bjmr3HZle) (:text |:height)
                              |b $ %{} :Leaf (:at 1702228073205) (:by |bjmr3HZle) (:text |12)
                          |r $ %{} :Expr (:at 1696701255464) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701258049) (:by |bjmr3HZle) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1696701259252) (:by |bjmr3HZle) (:text "|\"2px")
                          |s $ %{} :Expr (:at 1696701176179) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701178713) (:by |bjmr3HZle) (:text |:border)
                              |b $ %{} :Expr (:at 1696701184659) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696701186794) (:by |bjmr3HZle) (:text |str)
                                  |b $ %{} :Leaf (:at 1696701274632) (:by |bjmr3HZle) (:text "|\"1.5px solid ")
                                  |h $ %{} :Expr (:at 1696701190981) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696701191450) (:by |bjmr3HZle) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1696701191825) (:by |bjmr3HZle) (:text |0)
                                      |h $ %{} :Leaf (:at 1696701192651) (:by |bjmr3HZle) (:text |0)
                                      |l $ %{} :Leaf (:at 1696701193561) (:by |bjmr3HZle) (:text |80)
                          |t $ %{} :Expr (:at 1696701243012) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701244306) (:by |bjmr3HZle) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1696701245404) (:by |bjmr3HZle) (:text |:pointer)
                          |u $ %{} :Expr (:at 1696701286549) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701289138) (:by |bjmr3HZle) (:text |:outline)
                              |b $ %{} :Leaf (:at 1696701294494) (:by |bjmr3HZle) (:text "|\"1px solid white")
                  |h $ %{} :Expr (:at 1696701814824) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696701814824) (:by |bjmr3HZle) (:text "|\"&:active")
                      |b $ %{} :Expr (:at 1696701814824) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696701814824) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1696701814824) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701814824) (:by |bjmr3HZle) (:text |:border-color)
                              |b $ %{} :Expr (:at 1696701814824) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696701814824) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1696701814824) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1696701814824) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1696701814824) (:by |bjmr3HZle) (:text |50)
                          |h $ %{} :Expr (:at 1696701830972) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696701834765) (:by |bjmr3HZle) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1696701836691) (:by |bjmr3HZle) (:text "|\"0ms")
        |style-copy-wrapper $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1703010333618) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1703010335428) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1703010333618) (:by |bjmr3HZle) (:text |style-copy-wrapper)
              |h $ %{} :Expr (:at 1703010336432) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1703010336933) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1703010337694) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1703010338897) (:by |bjmr3HZle) (:text "|\"&")
                      |T $ %{} :Expr (:at 1703010336139) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703010336139) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1703010336139) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703010336139) (:by |bjmr3HZle) (:text |:position)
                              |b $ %{} :Leaf (:at 1703010336139) (:by |bjmr3HZle) (:text |:absolute)
                          |h $ %{} :Expr (:at 1703010336139) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703010336139) (:by |bjmr3HZle) (:text |:top)
                              |b $ %{} :Leaf (:at 1703010336139) (:by |bjmr3HZle) (:text |10)
                          |l $ %{} :Expr (:at 1703010336139) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703010336139) (:by |bjmr3HZle) (:text |:right)
                              |b $ %{} :Leaf (:at 1703010612188) (:by |bjmr3HZle) (:text |2)
        |style-item $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1678305109605) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1678305112672) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1678305109605) (:by |bjmr3HZle) (:text |style-item)
              |h $ %{} :Expr (:at 1678305109605) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1678305122117) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1678305122560) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1678305124903) (:by |bjmr3HZle) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1678305125574) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678305125574) (:by |bjmr3HZle) (:text |{})
                          |h $ %{} :Expr (:at 1678305125574) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305125574) (:by |bjmr3HZle) (:text |:min-height)
                              |b $ %{} :Leaf (:at 1678305125574) (:by |bjmr3HZle) (:text |72)
                          |l $ %{} :Expr (:at 1678305125574) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305125574) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1678305125574) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1678305125574) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1678305125574) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1678305125574) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1678305207016) (:by |bjmr3HZle) (:text |99)
                          |o $ %{} :Expr (:at 1678305125574) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305125574) (:by |bjmr3HZle) (:text |:padding)
                              |b $ %{} :Leaf (:at 1678305125574) (:by |bjmr3HZle) (:text "|\"8px")
                          |q $ %{} :Expr (:at 1678305190195) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305197851) (:by |bjmr3HZle) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1678305199957) (:by |bjmr3HZle) (:text "|\"240ms")
                          |s $ %{} :Expr (:at 1678305246051) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305249082) (:by |bjmr3HZle) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1678305251474) (:by |bjmr3HZle) (:text "|\"4px")
                  |h $ %{} :Expr (:at 1678305128785) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1678305133483) (:by |bjmr3HZle) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1678305133956) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678305134982) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1678305137973) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305137973) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1678305137973) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1678305137973) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1678305137973) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1678305137973) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1678305140147) (:by |bjmr3HZle) (:text |100)
                          |h $ %{} :Expr (:at 1678305142366) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678305144325) (:by |bjmr3HZle) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1678305144718) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1678305145285) (:by |bjmr3HZle) (:text |str)
                                  |b $ %{} :Leaf (:at 1678305182721) (:by |bjmr3HZle) (:text "|\"0 0 4px 1px ")
                                  |h $ %{} :Expr (:at 1678305152373) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1678305154037) (:by |bjmr3HZle) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1678305154362) (:by |bjmr3HZle) (:text |0)
                                      |h $ %{} :Leaf (:at 1678305154565) (:by |bjmr3HZle) (:text |0)
                                      |l $ %{} :Leaf (:at 1678305155800) (:by |bjmr3HZle) (:text |0)
                                      |o $ %{} :Leaf (:at 1678305217301) (:by |bjmr3HZle) (:text |0.08)
        |style-selected-tab $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1702404785201) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1702404786336) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1702404785201) (:by |bjmr3HZle) (:text |style-selected-tab)
              |h $ %{} :Expr (:at 1702404785201) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702404787339) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1702404787646) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702404789718) (:by |bjmr3HZle) (:text "|\"&")
                      |b $ %{} :Expr (:at 1702404790209) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702404790507) (:by |bjmr3HZle) (:text |{})
        |style-tab-highlight $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1702404332956) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1702404334484) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1702405828695) (:by |bjmr3HZle) (:text |style-tab-highlight)
              |h $ %{} :Expr (:at 1702404332956) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702404335713) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1702404336964) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702404338263) (:by |bjmr3HZle) (:text "|\"&")
                      |b $ %{} :Expr (:at 1702404338645) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702404339572) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702404620923) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702405230664) (:by |bjmr3HZle) (:text |:min-width)
                              |b $ %{} :Leaf (:at 1702405895261) (:by |bjmr3HZle) (:text |0)
                          |e $ %{} :Expr (:at 1702405906992) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702405908026) (:by |bjmr3HZle) (:text |:left)
                              |b $ %{} :Leaf (:at 1702405908503) (:by |bjmr3HZle) (:text |0)
                          |h $ %{} :Expr (:at 1702405222872) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702405224654) (:by |bjmr3HZle) (:text |:height)
                              |b $ %{} :Leaf (:at 1702576646787) (:by |bjmr3HZle) (:text |1)
                          |l $ %{} :Expr (:at 1702405228095) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702405237455) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1702405238648) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702405238996) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1702405240373) (:by |bjmr3HZle) (:text |200)
                                  |h $ %{} :Leaf (:at 1702576575097) (:by |bjmr3HZle) (:text |60)
                                  |l $ %{} :Leaf (:at 1702576576543) (:by |bjmr3HZle) (:text |80)
                          |o $ %{} :Expr (:at 1702405244822) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702405245879) (:by |bjmr3HZle) (:text |:bottom)
                              |b $ %{} :Leaf (:at 1702405246444) (:by |bjmr3HZle) (:text |0)
                          |q $ %{} :Expr (:at 1702405247936) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702405250967) (:by |bjmr3HZle) (:text |:position)
                              |b $ %{} :Leaf (:at 1702405252976) (:by |bjmr3HZle) (:text |:absolute)
                          |s $ %{} :Expr (:at 1702405541450) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702405546331) (:by |bjmr3HZle) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1702405547670) (:by |bjmr3HZle) (:text "|\"200ms")
                          |t $ %{} :Expr (:at 1702576752273) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702576755642) (:by |bjmr3HZle) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1702576757799) (:by |bjmr3HZle) (:text "|\"2px")
                  |h $ %{} :Expr (:at 1702576601868) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Expr (:at 1702576604658) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702576605474) (:by |bjmr3HZle) (:text |str)
                          |X $ %{} :Leaf (:at 1702576631979) (:by |bjmr3HZle) (:text "|\".")
                          |b $ %{} :Leaf (:at 1702576605899) (:by |bjmr3HZle) (:text |style-tabs)
                          |h $ %{} :Leaf (:at 1702576612193) (:by |bjmr3HZle) (:text "|\":hover &")
                      |b $ %{} :Expr (:at 1702576613147) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702576613563) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702576613960) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702576616370) (:by |bjmr3HZle) (:text |:height)
                              |b $ %{} :Leaf (:at 1702576639461) (:by |bjmr3HZle) (:text |3)
        |style-tab-vertical-highlight $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1702576346547) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1702576347991) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1702576346547) (:by |bjmr3HZle) (:text |style-tab-vertical-highlight)
              |h $ %{} :Expr (:at 1702576346547) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702576349032) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1702576349535) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702576362970) (:by |bjmr3HZle) (:text "|\"div&")
                      |b $ %{} :Expr (:at 1702576364645) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702576364976) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702576365570) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702576366781) (:by |bjmr3HZle) (:text |:width)
                              |b $ %{} :Leaf (:at 1702576666759) (:by |bjmr3HZle) (:text |2)
                          |h $ %{} :Expr (:at 1702576369887) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702576371744) (:by |bjmr3HZle) (:text |:left)
                              |b $ %{} :Leaf (:at 1702576372186) (:by |bjmr3HZle) (:text |0)
                  |h $ %{} :Expr (:at 1702576656818) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Expr (:at 1702576656818) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702576656818) (:by |bjmr3HZle) (:text |str)
                          |b $ %{} :Leaf (:at 1702576656818) (:by |bjmr3HZle) (:text "|\".")
                          |h $ %{} :Leaf (:at 1702576656818) (:by |bjmr3HZle) (:text |style-tabs)
                          |l $ %{} :Leaf (:at 1702576660169) (:by |bjmr3HZle) (:text "|\":hover div&")
                      |b $ %{} :Expr (:at 1702576656818) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702576656818) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702576656818) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702576662317) (:by |bjmr3HZle) (:text |:width)
                              |b $ %{} :Leaf (:at 1702576668363) (:by |bjmr3HZle) (:text |4)
        |style-tabs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1702404641249) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1702404642380) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1702404641249) (:by |bjmr3HZle) (:text |style-tabs)
              |h $ %{} :Expr (:at 1702404641249) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702404643395) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1702404643702) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702404646427) (:by |bjmr3HZle) (:text "|\"&")
                      |b $ %{} :Expr (:at 1702404646943) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702404647231) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702404647460) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702404650091) (:by |bjmr3HZle) (:text |:position)
                              |b $ %{} :Leaf (:at 1702404651399) (:by |bjmr3HZle) (:text |:relative)
        |style-tag $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700586824006) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1700586827614) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1700586824006) (:by |bjmr3HZle) (:text |style-tag)
              |h $ %{} :Expr (:at 1700586824006) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700586828801) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1700586829030) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700586830749) (:by |bjmr3HZle) (:text "|\"&")
                      |b $ %{} :Expr (:at 1700586831170) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700586831515) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700586831809) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586844600) (:by |bjmr3HZle) (:text |:display)
                              |b $ %{} :Leaf (:at 1700586846938) (:by |bjmr3HZle) (:text |:inline-block)
                          |h $ %{} :Expr (:at 1700586923472) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586926382) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1700586926591) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700586926931) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1700586927271) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1700586927531) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1700586952830) (:by |bjmr3HZle) (:text |96)
                          |l $ %{} :Expr (:at 1700586932495) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586936331) (:by |bjmr3HZle) (:text |:border)
                              |b $ %{} :Expr (:at 1700586937060) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700586937504) (:by |bjmr3HZle) (:text |str)
                                  |b $ %{} :Leaf (:at 1700586941804) (:by |bjmr3HZle) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1700586942668) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700586942982) (:by |bjmr3HZle) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1700586943245) (:by |bjmr3HZle) (:text |0)
                                      |h $ %{} :Leaf (:at 1700586943526) (:by |bjmr3HZle) (:text |0)
                                      |l $ %{} :Leaf (:at 1700587205656) (:by |bjmr3HZle) (:text |92)
                          |o $ %{} :Expr (:at 1700586955784) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586957700) (:by |bjmr3HZle) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1700586959186) (:by |bjmr3HZle) (:text "|\"4px")
                          |q $ %{} :Expr (:at 1700586962190) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587030663) (:by |bjmr3HZle) (:text |:height)
                              |b $ %{} :Leaf (:at 1700586969918) (:by |bjmr3HZle) (:text "|\"20px")
                          |r $ %{} :Expr (:at 1700586962190) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586964190) (:by |bjmr3HZle) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1700586969918) (:by |bjmr3HZle) (:text "|\"20px")
                          |s $ %{} :Expr (:at 1700586971467) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586975421) (:by |bjmr3HZle) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1700586975915) (:by |bjmr3HZle) (:text |12)
                          |t $ %{} :Expr (:at 1700586978568) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586980225) (:by |bjmr3HZle) (:text |:padding)
                              |b $ %{} :Leaf (:at 1700586989376) (:by |bjmr3HZle) (:text "|\"0px 8px")
                          |u $ %{} :Expr (:at 1700587190746) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587191825) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1700587192198) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587192501) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1700587192795) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1700587193019) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1702227760038) (:by |bjmr3HZle) (:text |64)
                          |v $ %{} :Expr (:at 1700587636142) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587637290) (:by |bjmr3HZle) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1700587638898) (:by |bjmr3HZle) (:text |:default)
                  |h $ %{} :Expr (:at 1700587171388) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700587173749) (:by |bjmr3HZle) (:text "|\"&:hover")
                      |b $ %{} :Expr (:at 1700587174373) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700587174721) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700587180718) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587180718) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1700587180718) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587180718) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1700587180718) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1700587180718) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1700587665502) (:by |bjmr3HZle) (:text |94)
                  |l $ %{} :Expr (:at 1700587171388) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700587870748) (:by |bjmr3HZle) (:text "|\"&:active")
                      |b $ %{} :Expr (:at 1700587174373) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700587174721) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700587180718) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587874198) (:by |bjmr3HZle) (:text |:transform)
                              |b $ %{} :Leaf (:at 1700587881032) (:by |bjmr3HZle) (:text "|\"translate(1px,1px)")
        |style-tag-error $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700587377732) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1700587378952) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1700587377732) (:by |bjmr3HZle) (:text |style-tag-error)
              |h $ %{} :Expr (:at 1700587379679) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700587379679) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1700587379679) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700587379679) (:by |bjmr3HZle) (:text "|\"div&")
                      |b $ %{} :Expr (:at 1700587379679) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700587379679) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700587379679) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587379679) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Leaf (:at 1700587379679) (:by |bjmr3HZle) (:text |:white)
                          |e $ %{} :Expr (:at 1700587399685) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587405176) (:by |bjmr3HZle) (:text |:border)
                              |b $ %{} :Leaf (:at 1700587404314) (:by |bjmr3HZle) (:text |:none)
                          |h $ %{} :Expr (:at 1700587384177) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587387680) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1700587387943) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587388226) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1700587388611) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1700587396032) (:by |bjmr3HZle) (:text |90)
                                  |l $ %{} :Leaf (:at 1702227442236) (:by |bjmr3HZle) (:text |76)
                  |h $ %{} :Expr (:at 1700587593877) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700587596131) (:by |bjmr3HZle) (:text "|\"div&:hover")
                      |b $ %{} :Expr (:at 1700587596741) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700587597035) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700587597305) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587598747) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1700587598747) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587598747) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1700587598747) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1700587598747) (:by |bjmr3HZle) (:text |90)
                                  |l $ %{} :Leaf (:at 1702227443941) (:by |bjmr3HZle) (:text |72)
        |style-tag-info $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700587340132) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1700587341202) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1700587340132) (:by |bjmr3HZle) (:text |style-tag-info)
              |h $ %{} :Expr (:at 1700587340132) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700587342344) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1700587343714) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700587346697) (:by |bjmr3HZle) (:text "|\"div&")
                      |b $ %{} :Expr (:at 1700587418646) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700587418646) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700587418646) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587418646) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Leaf (:at 1700587418646) (:by |bjmr3HZle) (:text |:white)
                          |h $ %{} :Expr (:at 1700587418646) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587418646) (:by |bjmr3HZle) (:text |:border)
                              |b $ %{} :Leaf (:at 1700587418646) (:by |bjmr3HZle) (:text |:none)
                          |l $ %{} :Expr (:at 1700587418646) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587418646) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1700587418646) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587418646) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1700587436624) (:by |bjmr3HZle) (:text |240)
                                  |h $ %{} :Leaf (:at 1700587433742) (:by |bjmr3HZle) (:text |99)
                                  |l $ %{} :Leaf (:at 1702227537063) (:by |bjmr3HZle) (:text |86)
                  |h $ %{} :Expr (:at 1700587446394) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700587450500) (:by |bjmr3HZle) (:text "|\"div&:hover")
                      |b $ %{} :Expr (:at 1700587451365) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700587451746) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700587453560) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587453560) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1700587453560) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587453560) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1700587453560) (:by |bjmr3HZle) (:text |240)
                                  |h $ %{} :Leaf (:at 1700587453560) (:by |bjmr3HZle) (:text |99)
                                  |l $ %{} :Leaf (:at 1702227529896) (:by |bjmr3HZle) (:text |84)
        |style-tag-success $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700587792520) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1700587794624) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1700587792520) (:by |bjmr3HZle) (:text |style-tag-success)
              |h $ %{} :Expr (:at 1700587795509) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1700587795509) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text "|\"div&")
                      |b $ %{} :Expr (:at 1700587795509) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700587795509) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |:white)
                          |h $ %{} :Expr (:at 1700587795509) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |:border)
                              |b $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |:none)
                          |j $ %{} :Expr (:at 1702227306414) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702227307361) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1702227348419) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702227349807) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1702227393962) (:by |bjmr3HZle) (:text |120)
                                  |h $ %{} :Leaf (:at 1702227398226) (:by |bjmr3HZle) (:text |99)
                                  |l $ %{} :Leaf (:at 1702227403794) (:by |bjmr3HZle) (:text |40)
                          |l $ %{} :Expr (:at 1700587795509) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1700587795509) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1700587811485) (:by |bjmr3HZle) (:text |120)
                                  |h $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |99)
                                  |l $ %{} :Leaf (:at 1702227412630) (:by |bjmr3HZle) (:text |92)
                  |h $ %{} :Expr (:at 1700587795509) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text "|\"div&:hover")
                      |b $ %{} :Expr (:at 1700587795509) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700587795509) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1700587795509) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1700587808539) (:by |bjmr3HZle) (:text |120)
                                  |h $ %{} :Leaf (:at 1700587795509) (:by |bjmr3HZle) (:text |99)
                                  |l $ %{} :Leaf (:at 1702227414459) (:by |bjmr3HZle) (:text |88)
        |style-tag-warning $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700587370785) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1700587373582) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1700587370785) (:by |bjmr3HZle) (:text |style-tag-warning)
              |h $ %{} :Expr (:at 1700587371992) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700587371992) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1700587371992) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700587371992) (:by |bjmr3HZle) (:text "|\"div&")
                      |b $ %{} :Expr (:at 1700587471301) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700587471301) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700587471301) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587471301) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Leaf (:at 1700587545956) (:by |bjmr3HZle) (:text |:white)
                          |h $ %{} :Expr (:at 1700587471301) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587471301) (:by |bjmr3HZle) (:text |:border)
                              |b $ %{} :Leaf (:at 1700587471301) (:by |bjmr3HZle) (:text |:none)
                          |j $ %{} :Expr (:at 1702227325867) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702227326739) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1702227327854) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702227328241) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1702227367643) (:by |bjmr3HZle) (:text |60)
                                  |h $ %{} :Leaf (:at 1702227369383) (:by |bjmr3HZle) (:text |90)
                                  |l $ %{} :Leaf (:at 1702227374701) (:by |bjmr3HZle) (:text |30)
                          |l $ %{} :Expr (:at 1700587471301) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587471301) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1700587471301) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587471301) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1702227190007) (:by |bjmr3HZle) (:text |60)
                                  |h $ %{} :Leaf (:at 1700587482917) (:by |bjmr3HZle) (:text |98)
                                  |l $ %{} :Leaf (:at 1702227381672) (:by |bjmr3HZle) (:text |58)
                  |h $ %{} :Expr (:at 1700587553344) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700587556246) (:by |bjmr3HZle) (:text "|\"div&:hover")
                      |b $ %{} :Expr (:at 1700587557013) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700587557366) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700587558949) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700587558949) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1700587558949) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587558949) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1702227196420) (:by |bjmr3HZle) (:text |60)
                                  |h $ %{} :Leaf (:at 1700587558949) (:by |bjmr3HZle) (:text |98)
                                  |l $ %{} :Leaf (:at 1702227607554) (:by |bjmr3HZle) (:text |49)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp)
            |r $ %{} :Expr (:at 1506675837748) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1506677480730) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540954573122) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1506677486543) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506677486718) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677487993) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1702404428967) (:by |bjmr3HZle) (:text |defeffect)
                        |r $ %{} :Leaf (:at 1506677489150) (:by |root) (:text |div)
                        |t $ %{} :Leaf (:at 1592799214797) (:by |bjmr3HZle) (:text |list->)
                        |v $ %{} :Leaf (:at 1506677490308) (:by |root) (:text |input)
                        |x $ %{} :Leaf (:at 1506677491610) (:by |root) (:text |textarea)
                        |y $ %{} :Leaf (:at 1506677492568) (:by |root) (:text |button)
                        |yD $ %{} :Leaf (:at 1506678375355) (:by |root) (:text |span)
                        |yH $ %{} :Leaf (:at 1508046716474) (:by |root) (:text |select)
                        |yL $ %{} :Leaf (:at 1508046114127) (:by |root) (:text |option)
                        |yT $ %{} :Leaf (:at 1506677492922) (:by |root) (:text |a)
                        |yj $ %{} :Leaf (:at 1506677493659) (:by |root) (:text |<>)
                        |yr $ %{} :Leaf (:at 1644509683100) (:by |bjmr3HZle) (:text |pre)
                |v $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677513211) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516428675503) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1557076639445) (:by |bjmr3HZle)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610553669457) (:by |bjmr3HZle) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1557076642985) (:by |bjmr3HZle) (:text |:refer)
                    |v $ %{} :Expr (:at 1557076643206) (:by |bjmr3HZle)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1557076644174) (:by |bjmr3HZle) (:text |hsl)
                |yT $ %{} :Expr (:at 1644509697531) (:by |bjmr3HZle)
                  :data $ {}
                    |5 $ %{} :Leaf (:at 1644509716959) (:by |bjmr3HZle) (:text "|\"cirru-color")
                    |D $ %{} :Leaf (:at 1644509712471) (:by |bjmr3HZle) (:text |:refer)
                    |T $ %{} :Expr (:at 1644509709626) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1644509704341) (:by |bjmr3HZle) (:text |generateHtml)
                |z $ %{} :Expr (:at 1651248023422) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651248026093) (:by |bjmr3HZle) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1651248027275) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1651248027469) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651248028734) (:by |bjmr3HZle) (:text |defstyle)
                |zD $ %{} :Expr (:at 1651248200872) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651248204104) (:by |bjmr3HZle) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1651248205795) (:by |bjmr3HZle) (:text |:as)
                    |h $ %{} :Leaf (:at 1651248206769) (:by |bjmr3HZle) (:text |css)
                |zP $ %{} :Expr (:at 1696701689975) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1696701690590) (:by |bjmr3HZle) (:text "|\"copy-text-to-clipboard")
                    |b $ %{} :Leaf (:at 1696701694988) (:by |bjmr3HZle) (:text |:default)
                    |h $ %{} :Leaf (:at 1696701697323) (:by |bjmr3HZle) (:text |copy!)
                |zY $ %{} :Expr (:at 1700193925024) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1700193927178) (:by |bjmr3HZle) (:text "|\"dayjs")
                    |b $ %{} :Leaf (:at 1700193928252) (:by |bjmr3HZle) (:text |:default)
                    |h $ %{} :Leaf (:at 1700193929056) (:by |bjmr3HZle) (:text |dayjs)
                |ze $ %{} :Expr (:at 1700194187638) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1700194191416) (:by |bjmr3HZle) (:text "|\"dayjs/plugin/isToday")
                    |b $ %{} :Leaf (:at 1700194195092) (:by |bjmr3HZle) (:text |:default)
                    |h $ %{} :Leaf (:at 1700194199833) (:by |bjmr3HZle) (:text |is-today)
    |respo-ui.comp.components $ %{} :FileEntry
      :defs $ {}
        |comp-components-page $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506677857916) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-components-page)
              |n $ %{} :Expr (:at 1506677854825) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506678312563) (:by |root) (:text |states)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |states)
                              |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |false)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1592800342737) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592800343571) (:by |bjmr3HZle) (:text |:style)
                              |j $ %{} :Expr (:at 1592800344707) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592800344498) (:by |bjmr3HZle) (:text |{})
                                  |j $ %{} :Expr (:at 1592800345460) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592800349528) (:by |bjmr3HZle) (:text |:padding-bottom)
                                      |j $ %{} :Leaf (:at 1592800361612) (:by |bjmr3HZle) (:text "|\"50vh")
                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506677892801) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text "||There are also components follow the guidelines of Respo UI:")
                          |v $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                              |j $ %{} :Leaf (:at 1659199343857) (:by |bjmr3HZle) (:text "|\"https://github.com/Respo/alerts.calcit")
                              |r $ %{} :Leaf (:at 1557077074085) (:by |bjmr3HZle) (:text "|\"alerts")
                          |vT $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                              |j $ %{} :Leaf (:at 1659199335283) (:by |bjmr3HZle) (:text "|\"https://github.com/Respo/respo-feather.calcit")
                              |r $ %{} :Leaf (:at 1557077094225) (:by |bjmr3HZle) (:text "|\"respo-feather")
                          |y $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                              |j $ %{} :Leaf (:at 1659199332682) (:by |bjmr3HZle) (:text ||https://github.com/Respo/respo-message.calcit)
                              |r $ %{} :Leaf (:at 1574180787592) (:by |bjmr3HZle) (:text "|\"respo-message")
                          |yT $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                              |j $ %{} :Leaf (:at 1659199328247) (:by |bjmr3HZle) (:text ||https://github.com/Respo/respo-markdown.calcit)
                              |r $ %{} :Leaf (:at 1574180789396) (:by |bjmr3HZle) (:text "|\"respo-markdown")
                          |yj $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695746554044) (:by |bjmr3HZle) (:text |;)
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                              |j $ %{} :Leaf (:at 1659199325773) (:by |bjmr3HZle) (:text ||https://github.com/Respo/notifier.calcit)
                              |r $ %{} :Leaf (:at 1574180829206) (:by |bjmr3HZle) (:text "|\"notifier")
                      |u $ %{} :Expr (:at 1702317579621) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317579621) (:by |bjmr3HZle) (:text |comp-demo-attributes)
                      |yT $ %{} :Expr (:at 1592799320720) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592799327228) (:by |bjmr3HZle) (:text |comp-demo-tabs)
                          |j $ %{} :Expr (:at 1592799385073) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592799386314) (:by |bjmr3HZle) (:text |>>)
                              |j $ %{} :Leaf (:at 1592799387304) (:by |bjmr3HZle) (:text |states)
                              |r $ %{} :Leaf (:at 1592799388733) (:by |bjmr3HZle) (:text |:tabs)
                      |zD $ %{} :Expr (:at 1695746337418) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695746342234) (:by |bjmr3HZle) (:text |comp-demo-cirru-snippet)
                      |zP $ %{} :Expr (:at 1695747097156) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747100265) (:by |bjmr3HZle) (:text |comp-demo-snippet)
                      |zR $ %{} :Expr (:at 1703009901356) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703009905410) (:by |bjmr3HZle) (:text |comp-demo-copy)
                      |zU $ %{} :Expr (:at 1695747097156) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700194009798) (:by |bjmr3HZle) (:text |comp-demo-time)
                      |zY $ %{} :Expr (:at 1700586867926) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700586870584) (:by |bjmr3HZle) (:text |comp-demo-tags)
                      |ze $ %{} :Expr (:at 1700586867926) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317277354) (:by |bjmr3HZle) (:text |comp-demo-close)
                      |zg $ %{} :Expr (:at 1702490449087) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702490454917) (:by |bjmr3HZle) (:text |comp-demo-catoptric-text)
                      |zj $ %{} :Expr (:at 1702317570147) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317570147) (:by |bjmr3HZle) (:text |comp-demo-placeholder)
        |comp-demo-attributes $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1678209528939) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1678209530262) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1678209528939) (:by |bjmr3HZle) (:text |comp-demo-attributes)
              |h $ %{} :Expr (:at 1678209528939) (:by |bjmr3HZle)
                :data $ {}
              |l $ %{} :Expr (:at 1678209531091) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1678209531698) (:by |bjmr3HZle) (:text |div)
                  |b $ %{} :Expr (:at 1678209531959) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1678209532293) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1678305660240) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678305683874) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1678305713790) (:by |bjmr3HZle) (:text |css/column)
                  |e $ %{} :Expr (:at 1695746503408) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695746503408) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1695746503408) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695746503408) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1695746503408) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746503408) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1695746503408) (:by |bjmr3HZle) (:text |css-title)
                      |h $ %{} :Expr (:at 1695746503408) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695746503408) (:by |bjmr3HZle) (:text |<>)
                          |b $ %{} :Leaf (:at 1695746505806) (:by |bjmr3HZle) (:text "|\"Attributes demo")
                  |f $ %{} :Expr (:at 1678210316522) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1678210318274) (:by |bjmr3HZle) (:text |=<)
                      |b $ %{} :Leaf (:at 1678210318871) (:by |bjmr3HZle) (:text |nil)
                      |h $ %{} :Leaf (:at 1695746783626) (:by |bjmr3HZle) (:text |8)
                  |h $ %{} :Expr (:at 1695746745765) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1695746746571) (:by |bjmr3HZle) (:text |div)
                      |L $ %{} :Expr (:at 1695746746843) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695746747126) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1695746747354) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746748880) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Expr (:at 1695747268818) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1695747270826) (:by |bjmr3HZle) (:text |str-spaced)
                                  |T $ %{} :Leaf (:at 1695746749998) (:by |bjmr3HZle) (:text |css/row)
                                  |b $ %{} :Leaf (:at 1695747273559) (:by |bjmr3HZle) (:text |css/gap8)
                      |P $ %{} :Expr (:at 1695746764666) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695746765292) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                          |b $ %{} :Leaf (:at 1704821404275) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-attributes\n\n\ncomp-attributes $ {} (:title \"\\\"Attributes DEMO\")\n  :items $ [] (:: :attr \"\\\"Demo\" \"\\\"content\")\n    :: :attr \"\\\"Demo 2\" \"\\\"content 2\"\n    :: :attr-span \"\\\"DEMO 2\" \"\\\"content 2\" 2\n    :: :attr \"\\\"Demo 2\" \"\\\"content 2\"\n    :: :attr \"\\\"Demo 2\" \"\\\"content 2\"\n    :: :attr \"\\\"DEMO 3\" $ a\n      {} (:inner-text \"\\\"Demo\")\n        :href \"\\\"https://respo-mvc.org\"\n        :target \"\\\"_blank\"\n")
                          |h $ %{} :Expr (:at 1704535030455) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1704535031461) (:by |bjmr3HZle) (:text |{})
                              |T $ %{} :Expr (:at 1704535031894) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1704535032921) (:by |bjmr3HZle) (:text |:style)
                                  |T $ %{} :Expr (:at 1695746765292) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695746765292) (:by |bjmr3HZle) (:text |{})
                                      |b $ %{} :Expr (:at 1695746767352) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746769782) (:by |bjmr3HZle) (:text |:flex)
                                          |b $ %{} :Leaf (:at 1695746770245) (:by |bjmr3HZle) (:text |1)
                      |T $ %{} :Expr (:at 1695746751628) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695746752274) (:by |bjmr3HZle) (:text |div)
                          |L $ %{} :Expr (:at 1695746752500) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746752784) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1695746757091) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746758661) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1695746761267) (:by |bjmr3HZle) (:text |css/flex)
                          |T $ %{} :Expr (:at 1678209551700) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678209554872) (:by |bjmr3HZle) (:text |comp-attributes)
                              |b $ %{} :Expr (:at 1678209555209) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1678209555510) (:by |bjmr3HZle) (:text |{})
                                  |X $ %{} :Expr (:at 1678305465851) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1678305467059) (:by |bjmr3HZle) (:text |:title)
                                      |b $ %{} :Leaf (:at 1678305473376) (:by |bjmr3HZle) (:text "|\"Attributes DEMO")
                                  |b $ %{} :Expr (:at 1678209555766) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1678209558145) (:by |bjmr3HZle) (:text |:items)
                                      |b $ %{} :Expr (:at 1678209558548) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1678209558977) (:by |bjmr3HZle) (:text |[])
                                          |e $ %{} :Expr (:at 1704820993169) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1704820993629) (:by |bjmr3HZle) (:text |::)
                                              |b $ %{} :Leaf (:at 1704820996851) (:by |bjmr3HZle) (:text |:attr)
                                              |h $ %{} :Leaf (:at 1704821023943) (:by |bjmr3HZle) (:text "|\"Demo")
                                              |l $ %{} :Leaf (:at 1704821029763) (:by |bjmr3HZle) (:text "|\"content")
                                          |f $ %{} :Expr (:at 1704821039318) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1704821042150) (:by |bjmr3HZle) (:text |::)
                                              |b $ %{} :Leaf (:at 1704821043227) (:by |bjmr3HZle) (:text |:attr)
                                              |h $ %{} :Leaf (:at 1704821045164) (:by |bjmr3HZle) (:text "|\"Demo 2")
                                              |l $ %{} :Leaf (:at 1704821050817) (:by |bjmr3HZle) (:text "|\"content 2")
                                          |i $ %{} :Expr (:at 1704821201825) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1704821203813) (:by |bjmr3HZle) (:text |::)
                                              |b $ %{} :Leaf (:at 1704821218290) (:by |bjmr3HZle) (:text |:attr-span)
                                              |h $ %{} :Leaf (:at 1704821209034) (:by |bjmr3HZle) (:text "|\"DEMO 2")
                                              |l $ %{} :Leaf (:at 1704821210416) (:by |bjmr3HZle) (:text "|\"content 2")
                                              |o $ %{} :Leaf (:at 1704821212038) (:by |bjmr3HZle) (:text |2)
                                          |l $ %{} :Expr (:at 1704821227317) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1704821227317) (:by |bjmr3HZle) (:text |::)
                                              |b $ %{} :Leaf (:at 1704821227317) (:by |bjmr3HZle) (:text |:attr)
                                              |h $ %{} :Leaf (:at 1704821227317) (:by |bjmr3HZle) (:text "|\"Demo 2")
                                              |l $ %{} :Leaf (:at 1704821227317) (:by |bjmr3HZle) (:text "|\"content 2")
                                          |m $ %{} :Expr (:at 1704821228061) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1704821228061) (:by |bjmr3HZle) (:text |::)
                                              |b $ %{} :Leaf (:at 1704821228061) (:by |bjmr3HZle) (:text |:attr)
                                              |h $ %{} :Leaf (:at 1704821228061) (:by |bjmr3HZle) (:text "|\"Demo 2")
                                              |l $ %{} :Leaf (:at 1704821228061) (:by |bjmr3HZle) (:text "|\"content 2")
                                          |p $ %{} :Expr (:at 1704821231294) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1704821232672) (:by |bjmr3HZle) (:text |::)
                                              |b $ %{} :Leaf (:at 1704821234872) (:by |bjmr3HZle) (:text |:attr)
                                              |h $ %{} :Leaf (:at 1704821237199) (:by |bjmr3HZle) (:text "|\"DEMO 3")
                                              |l $ %{} :Expr (:at 1704821238885) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1704821238885) (:by |bjmr3HZle) (:text |a)
                                                  |b $ %{} :Expr (:at 1704821238885) (:by |bjmr3HZle)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1704821238885) (:by |bjmr3HZle) (:text |{})
                                                      |b $ %{} :Expr (:at 1704821238885) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1704821238885) (:by |bjmr3HZle) (:text |:inner-text)
                                                          |b $ %{} :Leaf (:at 1704821238885) (:by |bjmr3HZle) (:text "|\"Demo")
                                                      |h $ %{} :Expr (:at 1704821238885) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1704821238885) (:by |bjmr3HZle) (:text |:href)
                                                          |b $ %{} :Leaf (:at 1704821238885) (:by |bjmr3HZle) (:text "|\"https://respo-mvc.org")
                                                      |l $ %{} :Expr (:at 1704821238885) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1704821238885) (:by |bjmr3HZle) (:text |:target)
                                                          |b $ %{} :Leaf (:at 1704821238885) (:by |bjmr3HZle) (:text "|\"_blank")
        |comp-demo-catoptric-text $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1702490456698) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1702490459858) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1702490456698) (:by |bjmr3HZle) (:text |comp-demo-catoptric-text)
              |h $ %{} :Expr (:at 1702490456698) (:by |bjmr3HZle)
                :data $ {}
              |o $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |div)
                  |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |css/column)
                  |h $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |css-title)
                      |h $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |<>)
                          |b $ %{} :Leaf (:at 1708407476393) (:by |bjmr3HZle) (:text "|\"Catoptric demo")
                  |l $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |=<)
                      |b $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |nil)
                      |h $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |8)
                  |o $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |css/row)
                                  |h $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |css/gap8)
                      |h $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |css/flex)
                          |h $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1708407305068) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-catoptric-text\n\ncomp-catoptric-text \"|Demo Text\" $ {}\n  :style $ {}\n  :class-name $ {}\n")
                              |h $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |{})
                      |l $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |str-spaced)
                                      |b $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |css/flex)
                                      |h $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |css/row)
                              |h $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |:style)
                                  |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |{})
                                      |b $ %{} :Expr (:at 1702490480036) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text |:gap)
                                          |b $ %{} :Leaf (:at 1702490480036) (:by |bjmr3HZle) (:text "|\"8px")
                          |h $ %{} :Expr (:at 1702490487011) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702490487011) (:by |bjmr3HZle) (:text |comp-catoptric-text)
                              |b $ %{} :Leaf (:at 1702490854579) (:by |bjmr3HZle) (:text "|\"DEMO Text")
        |comp-demo-cirru-snippet $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1695746350054) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1695746394537) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1695746350054) (:by |bjmr3HZle) (:text |comp-demo-cirru-snippet)
              |e $ %{} :Expr (:at 1695746352713) (:by |bjmr3HZle)
                :data $ {}
              |h $ %{} :Expr (:at 1695746351742) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695746351742) (:by |bjmr3HZle) (:text |div)
                  |b $ %{} :Expr (:at 1695746351742) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695746351742) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1695746351742) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695746351742) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1695746351742) (:by |bjmr3HZle) (:text |css/column)
                  |h $ %{} :Expr (:at 1695746451416) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695746451416) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1695746451416) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695746451416) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1695746451416) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746451416) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1695746451416) (:by |bjmr3HZle) (:text |css-title)
                      |h $ %{} :Expr (:at 1695746451416) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695746451416) (:by |bjmr3HZle) (:text |<>)
                          |b $ %{} :Leaf (:at 1695746459984) (:by |bjmr3HZle) (:text "|\"Cirru snippet demo")
                  |l $ %{} :Expr (:at 1695746351742) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695746351742) (:by |bjmr3HZle) (:text |=<)
                      |b $ %{} :Leaf (:at 1695746351742) (:by |bjmr3HZle) (:text |nil)
                      |h $ %{} :Leaf (:at 1695746569046) (:by |bjmr3HZle) (:text |8)
                  |o $ %{} :Expr (:at 1695746791109) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1695746791852) (:by |bjmr3HZle) (:text |div)
                      |L $ %{} :Expr (:at 1695746792411) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695746792754) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1695746792981) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746794927) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Expr (:at 1695747208573) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1695747210773) (:by |bjmr3HZle) (:text |str-spaced)
                                  |T $ %{} :Leaf (:at 1695746796330) (:by |bjmr3HZle) (:text |css/row)
                                  |b $ %{} :Leaf (:at 1695747213768) (:by |bjmr3HZle) (:text |css/gap8)
                      |b $ %{} :Expr (:at 1695746808627) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695746809658) (:by |bjmr3HZle) (:text |div)
                          |L $ %{} :Expr (:at 1695746810036) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746811073) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1695746812768) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746812768) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1695746812768) (:by |bjmr3HZle) (:text |css/flex)
                          |T $ %{} :Expr (:at 1695746798516) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746798516) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1704535299204) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-cirru-snippet\n\ncomp-cirru-snippet \"\\\"defn f (a b)\\n  + a b\" $ {}\n  :style $ {}\n  :class-name style-demo")
                      |h $ %{} :Expr (:at 1695747173080) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1695747173080) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1695747173080) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1701535235689) (:by |bjmr3HZle)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1701535237248) (:by |bjmr3HZle) (:text |str-spaced)
                                      |T $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text |css/flex)
                                      |b $ %{} :Leaf (:at 1701535239832) (:by |bjmr3HZle) (:text |css/column)
                          |e $ %{} :Expr (:at 1701535206596) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1701535206596) (:by |bjmr3HZle) (:text |comp-snippet)
                              |b $ %{} :Leaf (:at 1701535224588) (:by |bjmr3HZle) (:text "|\"@import url(cirru-color/assets/cirru.css);")
                          |f $ %{} :Expr (:at 1701535230166) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1701535231286) (:by |bjmr3HZle) (:text |=<)
                              |b $ %{} :Leaf (:at 1701535231946) (:by |bjmr3HZle) (:text |nil)
                              |h $ %{} :Leaf (:at 1701535232218) (:by |bjmr3HZle) (:text |8)
                          |h $ %{} :Expr (:at 1695747173080) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text "|\"defn f (a b)\n  + a b")
        |comp-demo-close $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1702317279278) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1702317281023) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1702317279278) (:by |bjmr3HZle) (:text |comp-demo-close)
              |h $ %{} :Expr (:at 1702317279278) (:by |bjmr3HZle)
                :data $ {}
              |o $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |div)
                  |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |css/column)
                  |h $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |css-title)
                      |h $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |<>)
                          |b $ %{} :Leaf (:at 1708407486639) (:by |bjmr3HZle) (:text "|\"Close demo")
                  |l $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |=<)
                      |b $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |nil)
                      |h $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |8)
                  |o $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |css/row)
                                  |h $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |css/gap8)
                      |h $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |css/flex)
                          |h $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1711387274035) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-close\n\ncomp-close $ {}\n  :style $ {}\n  :class-name |\n  :on-click nil")
                              |h $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |{})
                      |l $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |str-spaced)
                                      |b $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |css/flex)
                                      |h $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |css/row)
                              |h $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |:style)
                                  |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |{})
                                      |b $ %{} :Expr (:at 1702317288825) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text |:gap)
                                          |b $ %{} :Leaf (:at 1702317288825) (:by |bjmr3HZle) (:text "|\"8px")
                          |h $ %{} :Expr (:at 1702317294727) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702317294727) (:by |bjmr3HZle) (:text |comp-close)
        |comp-demo-copy $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1703009906264) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1703009906264) (:by |bjmr3HZle) (:text |defn)
              |b $ %{} :Leaf (:at 1703009906264) (:by |bjmr3HZle) (:text |comp-demo-copy)
              |h $ %{} :Expr (:at 1703009906264) (:by |bjmr3HZle)
                :data $ {}
              |l $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |div)
                  |b $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |css/column)
                  |h $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |css-title)
                      |h $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |<>)
                          |b $ %{} :Leaf (:at 1703009915196) (:by |bjmr3HZle) (:text "|\"Copy demo")
                  |l $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |=<)
                      |b $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |nil)
                      |h $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |8)
                  |o $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |css/row)
                                  |h $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |css/gap8)
                      |h $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                          |b $ %{} :Leaf (:at 1703010643717) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-copy\n\ncomp-copy \"|demo\"\ncomp-copy \"|demo\" $ fn (e d!)")
                          |h $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |:flex)
                                  |b $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |1)
                      |l $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1703009908317) (:by |bjmr3HZle) (:text |css/flex)
                          |e $ %{} :Expr (:at 1703010486013) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703010485485) (:by |bjmr3HZle) (:text |<>)
                              |b $ %{} :Leaf (:at 1703010490044) (:by |bjmr3HZle) (:text "|\"demo demo")
                          |h $ %{} :Expr (:at 1703009908317) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009928958) (:by |bjmr3HZle) (:text |comp-copy)
                              |b $ %{} :Leaf (:at 1703010050096) (:by |bjmr3HZle) (:text "|\"DEMO TO COPY")
                          |l $ %{} :Expr (:at 1703010491672) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703010491672) (:by |bjmr3HZle) (:text |<>)
                              |b $ %{} :Leaf (:at 1703010491672) (:by |bjmr3HZle) (:text "|\"demo demo")
        |comp-demo-placeholder $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1592799137553) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1592799141377) (:by |bjmr3HZle) (:text |defcomp)
              |j $ %{} :Leaf (:at 1592799137553) (:by |bjmr3HZle) (:text |comp-demo-placeholder)
              |r $ %{} :Expr (:at 1592799137553) (:by |bjmr3HZle)
                :data $ {}
              |v $ %{} :Expr (:at 1592799142482) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1592799144339) (:by |bjmr3HZle) (:text |div)
                  |j $ %{} :Expr (:at 1592799144547) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1592799144830) (:by |bjmr3HZle) (:text |{})
                  |r $ %{} :Expr (:at 1592799157234) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1592799158657) (:by |bjmr3HZle) (:text |div)
                      |j $ %{} :Expr (:at 1592799158892) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592799159170) (:by |bjmr3HZle) (:text |{})
                          |j $ %{} :Expr (:at 1593190234473) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248310555) (:by |bjmr3HZle) (:text |:class-name)
                              |j $ %{} :Leaf (:at 1651248312262) (:by |bjmr3HZle) (:text |css-title)
                      |r $ %{} :Expr (:at 1592799160233) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592799160619) (:by |bjmr3HZle) (:text |<>)
                          |j $ %{} :Leaf (:at 1592799164068) (:by |bjmr3HZle) (:text "|\"Placeholder demo")
                  |v $ %{} :Expr (:at 1695746598551) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1695746601941) (:by |bjmr3HZle) (:text |div)
                      |L $ %{} :Expr (:at 1695746604485) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695746605661) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1695746606182) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746607846) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Expr (:at 1695747312154) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695747312154) (:by |bjmr3HZle) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1695747312154) (:by |bjmr3HZle) (:text |css/row)
                                  |h $ %{} :Leaf (:at 1695747312154) (:by |bjmr3HZle) (:text |css/gap8)
                      |P $ %{} :Expr (:at 1695746616101) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695746616101) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                          |b $ %{} :Leaf (:at 1695746616101) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-placeholder\n\ncomp-placeholder \"|demo\"\ncomp-placeholder \"|中文\"")
                          |h $ %{} :Expr (:at 1695746616101) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746616101) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1695746643505) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746644100) (:by |bjmr3HZle) (:text |:flex)
                                  |b $ %{} :Leaf (:at 1695746644436) (:by |bjmr3HZle) (:text |1)
                      |T $ %{} :Expr (:at 1695746612934) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695746613547) (:by |bjmr3HZle) (:text |div)
                          |L $ %{} :Expr (:at 1695746613768) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746614060) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1695746631930) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746635323) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1695746638762) (:by |bjmr3HZle) (:text |css/flex)
                          |T $ %{} :Expr (:at 1592799165509) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592799167862) (:by |bjmr3HZle) (:text |comp-placeholder)
                              |j $ %{} :Leaf (:at 1592799173244) (:by |bjmr3HZle) (:text "|\"This is a demo")
                          |b $ %{} :Expr (:at 1695746618208) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746618208) (:by |bjmr3HZle) (:text |comp-placeholder)
                              |b $ %{} :Leaf (:at 1695746618208) (:by |bjmr3HZle) (:text "|\"中文 Demo")
        |comp-demo-snippet $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1695747106925) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1695747110348) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1695747106925) (:by |bjmr3HZle) (:text |comp-demo-snippet)
              |h $ %{} :Expr (:at 1695747106925) (:by |bjmr3HZle)
                :data $ {}
              |l $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |div)
                  |b $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |css/column)
                  |h $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |css-title)
                      |h $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |<>)
                          |b $ %{} :Leaf (:at 1695747114731) (:by |bjmr3HZle) (:text "|\"Snippet demo")
                  |l $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |=<)
                      |b $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |nil)
                      |h $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |8)
                  |o $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Expr (:at 1695747250679) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1695747254153) (:by |bjmr3HZle) (:text |str-spaced)
                                  |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |css/row)
                                  |b $ %{} :Leaf (:at 1695747258913) (:by |bjmr3HZle) (:text |css/gap8)
                      |e $ %{} :Expr (:at 1695747164217) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747164217) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1695747164217) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747164217) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1695747164217) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695747164217) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1695747164217) (:by |bjmr3HZle) (:text |css/flex)
                          |h $ %{} :Expr (:at 1695747164217) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747164217) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1704535339333) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-snippet\n\ncomp-snippet \"\\\"defn f (a b)\\n  + a b\" $ {}\n  :class-name style-demo\n  :style $ {}")
                              |h $ %{} :Expr (:at 1695747164217) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695747164217) (:by |bjmr3HZle) (:text |{})
                      |h $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |css/flex)
                          |h $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1701535249019) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text "|\"defn f (a b)\n  + a b")
                              |h $ %{} :Expr (:at 1695747108486) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695747108486) (:by |bjmr3HZle) (:text |{})
        |comp-demo-tabs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1592799328282) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1592799330438) (:by |bjmr3HZle) (:text |defcomp)
              |j $ %{} :Leaf (:at 1592799328282) (:by |bjmr3HZle) (:text |comp-demo-tabs)
              |r $ %{} :Expr (:at 1592799328282) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1592799393719) (:by |bjmr3HZle) (:text |states)
              |v $ %{} :Expr (:at 1592799394727) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1592799395285) (:by |bjmr3HZle) (:text |let)
                  |L $ %{} :Expr (:at 1592799395626) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Expr (:at 1592799406986) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592799407931) (:by |bjmr3HZle) (:text |cursor)
                          |j $ %{} :Expr (:at 1592799408214) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592799409564) (:by |bjmr3HZle) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1592799410304) (:by |bjmr3HZle) (:text |states)
                      |T $ %{} :Expr (:at 1592799395792) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592799396458) (:by |bjmr3HZle) (:text |state)
                          |j $ %{} :Expr (:at 1592799396651) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592799396870) (:by |bjmr3HZle) (:text |or)
                              |j $ %{} :Expr (:at 1592799397575) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592799399112) (:by |bjmr3HZle) (:text |:data)
                                  |j $ %{} :Leaf (:at 1592799399914) (:by |bjmr3HZle) (:text |states)
                              |r $ %{} :Expr (:at 1592799400370) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592799400685) (:by |bjmr3HZle) (:text |{})
                                  |j $ %{} :Expr (:at 1592799400850) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592799403257) (:by |bjmr3HZle) (:text |:selected)
                                      |j $ %{} :Leaf (:at 1592799404403) (:by |bjmr3HZle) (:text |nil)
                      |j $ %{} :Expr (:at 1592800303026) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592800304627) (:by |bjmr3HZle) (:text |en-tabs)
                          |j $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |[])
                              |b $ %{} :Expr (:at 1704821666160) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1704821666391) (:by |bjmr3HZle) (:text |::)
                                  |b $ %{} :Leaf (:at 1704821668448) (:by |bjmr3HZle) (:text |:tab)
                                  |h $ %{} :Leaf (:at 1704821669455) (:by |bjmr3HZle) (:text |:book)
                                  |l $ %{} :Leaf (:at 1704821671185) (:by |bjmr3HZle) (:text "|\"Book")
                              |f $ %{} :Expr (:at 1704821672035) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1704821672678) (:by |bjmr3HZle) (:text |::)
                                  |b $ %{} :Leaf (:at 1704821673558) (:by |bjmr3HZle) (:text |:tab)
                                  |h $ %{} :Leaf (:at 1704821675207) (:by |bjmr3HZle) (:text |:card)
                                  |l $ %{} :Leaf (:at 1704821676609) (:by |bjmr3HZle) (:text "|\"Card")
                              |h $ %{} :Expr (:at 1704821677547) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1704821677931) (:by |bjmr3HZle) (:text |::)
                                  |b $ %{} :Leaf (:at 1704821682543) (:by |bjmr3HZle) (:text |:tab)
                                  |h $ %{} :Leaf (:at 1704821684371) (:by |bjmr3HZle) (:text |:pl)
                                  |l $ %{} :Leaf (:at 1704821685806) (:by |bjmr3HZle) (:text "|\"Programming language")
                  |T $ %{} :Expr (:at 1592799331389) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1592799331801) (:by |bjmr3HZle) (:text |div)
                      |j $ %{} :Expr (:at 1592799332027) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592799332337) (:by |bjmr3HZle) (:text |{})
                      |r $ %{} :Expr (:at 1592799333008) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592799334227) (:by |bjmr3HZle) (:text |div)
                          |j $ %{} :Expr (:at 1592799334395) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592799336171) (:by |bjmr3HZle) (:text |{})
                              |j $ %{} :Expr (:at 1592799583801) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248288379) (:by |bjmr3HZle) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1651248290055) (:by |bjmr3HZle) (:text |css-title)
                          |r $ %{} :Expr (:at 1592799336751) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592799338238) (:by |bjmr3HZle) (:text |<>)
                              |j $ %{} :Leaf (:at 1592799577548) (:by |bjmr3HZle) (:text "|\"Tabs demo")
                      |v $ %{} :Expr (:at 1695746659627) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695746660330) (:by |bjmr3HZle) (:text |div)
                          |L $ %{} :Expr (:at 1695746660573) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746660874) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1695746661116) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746662539) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1695747292618) (:by |bjmr3HZle)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1695747295261) (:by |bjmr3HZle) (:text |str-spaced)
                                      |T $ %{} :Leaf (:at 1695746663914) (:by |bjmr3HZle) (:text |css/row)
                                      |b $ %{} :Leaf (:at 1695747298232) (:by |bjmr3HZle) (:text |css/gap8)
                          |P $ %{} :Expr (:at 1695746687605) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746687605) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1704821909130) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-tabs\n\ncomp-tabs\n  {}\n    :selected (:selected state)\n    :style {}\n  []\n    :: :tab :book |Book\n    :: :tab :card |Card\n    :: :tab :pl \"|Programming language\"\n  fn (info d!)\n    println |selected info\n    d! cursor $ assoc state :selected $ :name info")
                              |h $ %{} :Expr (:at 1695746687605) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746687605) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1695746689110) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695746689984) (:by |bjmr3HZle) (:text |:flex)
                                      |b $ %{} :Leaf (:at 1695746690330) (:by |bjmr3HZle) (:text |1)
                          |T $ %{} :Expr (:at 1695746691685) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695746694387) (:by |bjmr3HZle) (:text |div)
                              |L $ %{} :Expr (:at 1695746694603) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746694921) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1695746695257) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695746696603) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1695746700176) (:by |bjmr3HZle) (:text |css/flex)
                              |T $ %{} :Expr (:at 1592799375191) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592799378850) (:by |bjmr3HZle) (:text |comp-tabs)
                                  |j $ %{} :Expr (:at 1592799768117) (:by |bjmr3HZle)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1592799768939) (:by |bjmr3HZle) (:text |{})
                                      |T $ %{} :Expr (:at 1592799795422) (:by |bjmr3HZle)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1592799797341) (:by |bjmr3HZle) (:text |:selected)
                                          |T $ %{} :Expr (:at 1592799770790) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1592799414765) (:by |bjmr3HZle) (:text |:selected)
                                              |j $ %{} :Leaf (:at 1592799415422) (:by |bjmr3HZle) (:text |state)
                                  |p $ %{} :Leaf (:at 1592800301190) (:by |bjmr3HZle) (:text |en-tabs)
                                  |v $ %{} :Expr (:at 1592799483857) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592799484222) (:by |bjmr3HZle) (:text |fn)
                                      |j $ %{} :Expr (:at 1592799484862) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592799487032) (:by |bjmr3HZle) (:text |info)
                                          |j $ %{} :Leaf (:at 1592799489123) (:by |bjmr3HZle) (:text |d!)
                                      |v $ %{} :Expr (:at 1592799522810) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592799524474) (:by |bjmr3HZle) (:text |d!)
                                          |j $ %{} :Leaf (:at 1592799525511) (:by |bjmr3HZle) (:text |cursor)
                                          |r $ %{} :Expr (:at 1592799525694) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1592799526981) (:by |bjmr3HZle) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1592799527818) (:by |bjmr3HZle) (:text |state)
                                              |r $ %{} :Leaf (:at 1592799529092) (:by |bjmr3HZle) (:text |:selected)
                                              |v $ %{} :Expr (:at 1592799532908) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1704821857921) (:by |bjmr3HZle) (:text |nth)
                                                  |j $ %{} :Leaf (:at 1592799534808) (:by |bjmr3HZle) (:text |info)
                                                  |n $ %{} :Leaf (:at 1704821858606) (:by |bjmr3HZle) (:text |1)
                              |b $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |comp-tabs)
                                  |b $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |{})
                                      |b $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:selected)
                                          |b $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:selected)
                                              |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |state)
                                  |h $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |[])
                                      |X $ %{} :Expr (:at 1704821697490) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1704821697711) (:by |bjmr3HZle) (:text |::)
                                          |b $ %{} :Leaf (:at 1704821701945) (:by |bjmr3HZle) (:text |:tab)
                                          |h $ %{} :Leaf (:at 1704821703468) (:by |bjmr3HZle) (:text |:book)
                                          |l $ %{} :Leaf (:at 1704821704701) (:by |bjmr3HZle) (:text "|\"书本")
                                      |Z $ %{} :Expr (:at 1704821697490) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1704821697711) (:by |bjmr3HZle) (:text |::)
                                          |b $ %{} :Leaf (:at 1704821701945) (:by |bjmr3HZle) (:text |:tab)
                                          |h $ %{} :Leaf (:at 1704821709384) (:by |bjmr3HZle) (:text |:card)
                                          |l $ %{} :Leaf (:at 1704821711469) (:by |bjmr3HZle) (:text "|\"纸牌")
                                      |a $ %{} :Expr (:at 1704821697490) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1704821697711) (:by |bjmr3HZle) (:text |::)
                                          |b $ %{} :Leaf (:at 1704821701945) (:by |bjmr3HZle) (:text |:tab)
                                          |h $ %{} :Leaf (:at 1704821715618) (:by |bjmr3HZle) (:text |:pl)
                                          |l $ %{} :Leaf (:at 1704821717484) (:by |bjmr3HZle) (:text "|\"编程语言")
                                  |l $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |fn)
                                      |b $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |info)
                                          |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |d!)
                                      |l $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |d!)
                                          |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |cursor)
                                          |h $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |state)
                                              |h $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:selected)
                                              |l $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1704821850639) (:by |bjmr3HZle) (:text |nth)
                                                  |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |info)
                                                  |h $ %{} :Leaf (:at 1704821851882) (:by |bjmr3HZle) (:text |1)
                              |h $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |comp-tabs)
                                  |b $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |{})
                                      |b $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |:selected)
                                          |b $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |:selected)
                                              |b $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |state)
                                      |h $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |:style)
                                          |b $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |{})
                                              |b $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |:border-bottom)
                                                  |b $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |str)
                                                      |b $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text "|\"1px solid ")
                                                      |h $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |hsl)
                                                          |b $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |0)
                                                          |h $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |0)
                                                          |l $ %{} :Leaf (:at 1702576714158) (:by |bjmr3HZle) (:text |94)
                                  |h $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |en-tabs)
                                  |l $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |fn)
                                      |b $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |info)
                                          |b $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |d!)
                                      |h $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |println)
                                          |b $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text "|\"selected")
                                          |h $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |info)
                                      |l $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |d!)
                                          |b $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |cursor)
                                          |h $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |state)
                                              |h $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |:selected)
                                              |l $ %{} :Expr (:at 1695746705441) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1704821845327) (:by |bjmr3HZle) (:text |nth)
                                                  |b $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |info)
                                                  |h $ %{} :Leaf (:at 1704821846084) (:by |bjmr3HZle) (:text |1)
                      |yD $ %{} :Expr (:at 1593161910643) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1593161911913) (:by |bjmr3HZle) (:text |=<)
                          |b $ %{} :Leaf (:at 1593161915099) (:by |bjmr3HZle) (:text |nil)
                          |j $ %{} :Leaf (:at 1593161912403) (:by |bjmr3HZle) (:text |8)
                      |yj $ %{} :Expr (:at 1695746707520) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695746708804) (:by |bjmr3HZle) (:text |div)
                          |L $ %{} :Expr (:at 1695746709055) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746709360) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1695746709617) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746711441) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1695747300858) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695747300858) (:by |bjmr3HZle) (:text |str-spaced)
                                      |b $ %{} :Leaf (:at 1695747300858) (:by |bjmr3HZle) (:text |css/row)
                                      |h $ %{} :Leaf (:at 1695747300858) (:by |bjmr3HZle) (:text |css/gap8)
                          |P $ %{} :Expr (:at 1695746726160) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746726160) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1695746726160) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-tabs\n\ncomp-tabs\n  &{} :selected (:selected state) :style ({}) :vertical? true :width 200\n  , tabs\n  fn (info d!)")
                              |h $ %{} :Expr (:at 1695746726160) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746726160) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1695746727446) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695746729011) (:by |bjmr3HZle) (:text |:flex)
                                      |b $ %{} :Leaf (:at 1695746729422) (:by |bjmr3HZle) (:text |1)
                          |T $ %{} :Expr (:at 1695746716103) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695746716715) (:by |bjmr3HZle) (:text |div)
                              |L $ %{} :Expr (:at 1695746716947) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746717588) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1695746717896) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695746721178) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1695746723497) (:by |bjmr3HZle) (:text |css/flex)
                              |T $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |comp-tabs)
                                  |j $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |{})
                                      |j $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |:selected)
                                          |j $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |:selected)
                                              |j $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |state)
                                      |n $ %{} :Expr (:at 1592800319532) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592800321895) (:by |bjmr3HZle) (:text |:vertical?)
                                          |j $ %{} :Leaf (:at 1592800322472) (:by |bjmr3HZle) (:text |true)
                                      |p $ %{} :Expr (:at 1592800408326) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592800409480) (:by |bjmr3HZle) (:text |:width)
                                          |j $ %{} :Leaf (:at 1592800411567) (:by |bjmr3HZle) (:text |200)
                                      |r $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |:style)
                                          |j $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |{})
                                  |r $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |en-tabs)
                                  |v $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |fn)
                                      |j $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |info)
                                          |j $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |d!)
                                      |r $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |println)
                                          |j $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text "|\"selected")
                                          |r $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |info)
                                      |v $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |d!)
                                          |j $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |cursor)
                                          |r $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |state)
                                              |r $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |:selected)
                                              |t $ %{} :Expr (:at 1704821832856) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1704821833423) (:by |bjmr3HZle) (:text |nth)
                                                  |b $ %{} :Leaf (:at 1704821835300) (:by |bjmr3HZle) (:text |info)
                                                  |h $ %{} :Leaf (:at 1704821835644) (:by |bjmr3HZle) (:text |1)
        |comp-demo-tags $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700586871270) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1700586873438) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1700586871270) (:by |bjmr3HZle) (:text |comp-demo-tags)
              |h $ %{} :Expr (:at 1700586871270) (:by |bjmr3HZle)
                :data $ {}
              |l $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |div)
                  |b $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |css/column)
                  |h $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |css-title)
                      |h $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |<>)
                          |b $ %{} :Leaf (:at 1700586882074) (:by |bjmr3HZle) (:text "|\"Tags demo")
                  |l $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |=<)
                      |b $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |nil)
                      |h $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |8)
                  |o $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |css/row)
                                  |h $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |css/gap8)
                      |h $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |css/flex)
                          |h $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1700586901943) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-tag\n\ncomp-tag :info \"demo\"\n")
                              |h $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |{})
                      |l $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1700586874474) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1700587247052) (:by |bjmr3HZle)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1700587249213) (:by |bjmr3HZle) (:text |str-spaced)
                                      |T $ %{} :Leaf (:at 1700586874474) (:by |bjmr3HZle) (:text |css/flex)
                                      |b $ %{} :Leaf (:at 1700587260422) (:by |bjmr3HZle) (:text |css/row)
                              |h $ %{} :Expr (:at 1700587263198) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700587264702) (:by |bjmr3HZle) (:text |:style)
                                  |b $ %{} :Expr (:at 1700587264875) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700587265159) (:by |bjmr3HZle) (:text |{})
                                      |b $ %{} :Expr (:at 1700587265446) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1700587265975) (:by |bjmr3HZle) (:text |:gap)
                                          |b $ %{} :Leaf (:at 1700587267945) (:by |bjmr3HZle) (:text "|\"8px")
                          |h $ %{} :Expr (:at 1700586907106) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586909556) (:by |bjmr3HZle) (:text |comp-tag)
                              |b $ %{} :Leaf (:at 1700586915206) (:by |bjmr3HZle) (:text |:info)
                              |h $ %{} :Leaf (:at 1700587725812) (:by |bjmr3HZle) (:text "|\"info demo")
                          |j $ %{} :Expr (:at 1700586907106) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586909556) (:by |bjmr3HZle) (:text |comp-tag)
                              |b $ %{} :Leaf (:at 1700587779013) (:by |bjmr3HZle) (:text |:success)
                              |h $ %{} :Leaf (:at 1702227143966) (:by |bjmr3HZle) (:text "|\"success demo")
                          |l $ %{} :Expr (:at 1700586907106) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586909556) (:by |bjmr3HZle) (:text |comp-tag)
                              |b $ %{} :Leaf (:at 1700587336398) (:by |bjmr3HZle) (:text |:warning)
                              |h $ %{} :Leaf (:at 1700587728511) (:by |bjmr3HZle) (:text "|\"warning demo")
                          |o $ %{} :Expr (:at 1700586907106) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586909556) (:by |bjmr3HZle) (:text |comp-tag)
                              |b $ %{} :Leaf (:at 1700587230291) (:by |bjmr3HZle) (:text |:error)
                              |h $ %{} :Leaf (:at 1700587731001) (:by |bjmr3HZle) (:text "|\"error demo")
                          |q $ %{} :Expr (:at 1700586907106) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700586909556) (:by |bjmr3HZle) (:text |comp-tag)
                              |b $ %{} :Leaf (:at 1700587741214) (:by |bjmr3HZle) (:text |:default)
                              |h $ %{} :Leaf (:at 1700587739436) (:by |bjmr3HZle) (:text "|\"default demo")
        |comp-demo-time $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700194013318) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1700194015008) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1700194013318) (:by |bjmr3HZle) (:text |comp-demo-time)
              |h $ %{} :Expr (:at 1700194013318) (:by |bjmr3HZle)
                :data $ {}
              |l $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |div)
                  |b $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |css/column)
                  |h $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |css-title)
                      |h $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |<>)
                          |b $ %{} :Leaf (:at 1700194020939) (:by |bjmr3HZle) (:text "|\"Time demo")
                  |l $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |=<)
                      |b $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |nil)
                      |h $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |8)
                  |o $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |css/row)
                                  |h $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |css/gap8)
                      |h $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |css/flex)
                          |h $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1700194077078) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-time\n\ncomp-time |2023-11-17T04:07:18.435Z $ {}\n  :class-name |demo\n  :on-click $ fn ()")
                              |h $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |{})
                      |l $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |css/flex)
                          |h $ %{} :Expr (:at 1700202214434) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1700202215139) (:by |bjmr3HZle) (:text |div)
                              |L $ %{} :Expr (:at 1700202215357) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700202215647) (:by |bjmr3HZle) (:text |{})
                              |T $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700194083414) (:by |bjmr3HZle) (:text |comp-time)
                                  |b $ %{} :Expr (:at 1700194097505) (:by |bjmr3HZle)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1700194102178) (:by |bjmr3HZle) (:text |.!toISOString)
                                      |T $ %{} :Expr (:at 1700194087237) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1700194095632) (:by |bjmr3HZle) (:text |new)
                                          |b $ %{} :Leaf (:at 1700194096868) (:by |bjmr3HZle) (:text |js/Date)
                                  |h $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |{})
                          |l $ %{} :Expr (:at 1700202216583) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1700202217721) (:by |bjmr3HZle) (:text |div)
                              |L $ %{} :Expr (:at 1700202217904) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700202218214) (:by |bjmr3HZle) (:text |{})
                              |T $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700194083414) (:by |bjmr3HZle) (:text |comp-time)
                                  |a $ %{} :Leaf (:at 1700202256572) (:by |bjmr3HZle) (:text "|\"2023-11-07T06:23:49.688Z")
                                  |h $ %{} :Expr (:at 1700194016273) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700194016273) (:by |bjmr3HZle) (:text |{})
        |css-title $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1592799594134) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1651248274504) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1651248282932) (:by |bjmr3HZle) (:text |css-title)
              |r $ %{} :Expr (:at 1651248275432) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651248275942) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651248276379) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651248278444) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1592799594134) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592799596063) (:by |bjmr3HZle) (:text |{})
                          |j $ %{} :Expr (:at 1592799596394) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592799598719) (:by |bjmr3HZle) (:text |:margin-top)
                              |j $ %{} :Leaf (:at 1592799599587) (:by |bjmr3HZle) (:text |40)
                          |r $ %{} :Expr (:at 1592799613932) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592799617216) (:by |bjmr3HZle) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1592799653199) (:by |bjmr3HZle) (:text |18)
                          |t $ %{} :Expr (:at 1695746523201) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695746525504) (:by |bjmr3HZle) (:text |:font-weight)
                              |b $ %{} :Leaf (:at 1695746526323) (:by |bjmr3HZle) (:text |:bold)
                          |x $ %{} :Expr (:at 1592799658198) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592799658988) (:by |bjmr3HZle) (:text |:color)
                              |j $ %{} :Expr (:at 1592799659216) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592799659564) (:by |bjmr3HZle) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1592799660441) (:by |bjmr3HZle) (:text |0)
                                  |r $ %{} :Leaf (:at 1592799661669) (:by |bjmr3HZle) (:text |0)
                                  |v $ %{} :Leaf (:at 1695746519920) (:by |bjmr3HZle) (:text |10)
        |render-entry $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |url)
                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |title)
              |v $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |a)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:href)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |url)
                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:inner-text)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |title)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.components)
            |r $ %{} :Expr (:at 1506675837748) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1506677864240) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540954480172) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1506677868947) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506677869145) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677871855) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1592799515975) (:by |bjmr3HZle) (:text |>>)
                        |r $ %{} :Leaf (:at 1506677872555) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1506677872778) (:by |root) (:text |a)
                        |x $ %{} :Leaf (:at 1506677874914) (:by |root) (:text |<>)
                        |y $ %{} :Leaf (:at 1592799940904) (:by |bjmr3HZle) (:text |pre)
                        |yT $ %{} :Leaf (:at 1592799978634) (:by |bjmr3HZle) (:text |code)
                |v $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677888324) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1592799147280) (:by |bjmr3HZle)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1592799193762) (:by |bjmr3HZle) (:text |respo-ui.comp)
                    |r $ %{} :Leaf (:at 1592799150314) (:by |bjmr3HZle) (:text |:refer)
                    |v $ %{} :Expr (:at 1592799150465) (:by |bjmr3HZle)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1592799152518) (:by |bjmr3HZle) (:text |comp-tabs)
                        |r $ %{} :Leaf (:at 1592799155638) (:by |bjmr3HZle) (:text |comp-placeholder)
                        |v $ %{} :Leaf (:at 1695746219919) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                        |x $ %{} :Leaf (:at 1593170668443) (:by |bjmr3HZle) (:text |comp-button)
                        |z $ %{} :Leaf (:at 1678209543653) (:by |bjmr3HZle) (:text |comp-attributes)
                        |zD $ %{} :Leaf (:at 1695747130630) (:by |bjmr3HZle) (:text |comp-snippet)
                        |zM $ %{} :Leaf (:at 1700194107862) (:by |bjmr3HZle) (:text |comp-time)
                        |zP $ %{} :Leaf (:at 1700586913010) (:by |bjmr3HZle) (:text |comp-tag)
                        |zY $ %{} :Leaf (:at 1702317301200) (:by |bjmr3HZle) (:text |comp-close)
                        |ze $ %{} :Leaf (:at 1702490468468) (:by |bjmr3HZle) (:text |comp-catoptric-text)
                        |zj $ %{} :Leaf (:at 1703010061353) (:by |bjmr3HZle) (:text |comp-copy)
                |y $ %{} :Expr (:at 1592799640169) (:by |bjmr3HZle)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1592799644095) (:by |bjmr3HZle) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1592799646088) (:by |bjmr3HZle) (:text |:as)
                    |v $ %{} :Leaf (:at 1592799646450) (:by |bjmr3HZle) (:text |ui)
                |yD $ %{} :Expr (:at 1678305703479) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1678305704881) (:by |bjmr3HZle) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1678305707244) (:by |bjmr3HZle) (:text |:as)
                    |h $ %{} :Leaf (:at 1678305707942) (:by |bjmr3HZle) (:text |css)
                |yT $ %{} :Expr (:at 1592799666911) (:by |bjmr3HZle)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610553676376) (:by |bjmr3HZle) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1592799669903) (:by |bjmr3HZle) (:text |:refer)
                    |v $ %{} :Expr (:at 1592799670046) (:by |bjmr3HZle)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1592799671371) (:by |bjmr3HZle) (:text |hsl)
                |z $ %{} :Expr (:at 1651248316522) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651248318972) (:by |bjmr3HZle) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1651248319742) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1651248320332) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651248321837) (:by |bjmr3HZle) (:text |defstyle)
    |respo-ui.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506677027194) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-container)
              |n $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |store)
              |v $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |router)
                          |j $ %{} :Expr (:at 1610699592552) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1610699593805) (:by |bjmr3HZle) (:text |either)
                              |T $ %{} :Expr (:at 1610558514151) (:by |bjmr3HZle)
                                :data $ {}
                                  |j $ %{} :Leaf (:at 1512361769489) (:by |root) (:text |first)
                                  |r $ %{} :Expr (:at 1512361752256) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1512361762447) (:by |root) (:text |:path)
                                      |T $ %{} :Expr (:at 1610699501160) (:by |bjmr3HZle)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1610699502262) (:by |bjmr3HZle) (:text |either)
                                          |T $ %{} :Expr (:at 1689691931208) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1689691931208) (:by |bjmr3HZle) (:text |:router)
                                              |b $ %{} :Leaf (:at 1689691931208) (:by |bjmr3HZle) (:text |store)
                                          |j $ %{} :Expr (:at 1610699504329) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610699504671) (:by |bjmr3HZle) (:text |{})
                              |j $ %{} :Expr (:at 1610699594407) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689691888939) (:by |bjmr3HZle) (:text |::)
                                  |b $ %{} :Leaf (:at 1690724624387) (:by |bjmr3HZle) (:text |:index)
                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |store)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1651246576673) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651246584555) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Expr (:at 1651246607359) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1651246611722) (:by |bjmr3HZle) (:text |str-spaced)
                                  |L $ %{} :Leaf (:at 1701534709572) (:by |bjmr3HZle) (:text |css/preset)
                                  |T $ %{} :Leaf (:at 1651246581599) (:by |bjmr3HZle) (:text |css/global)
                                  |b $ %{} :Leaf (:at 1651246613169) (:by |bjmr3HZle) (:text |css/fullscreen)
                                  |h $ %{} :Leaf (:at 1651246622643) (:by |bjmr3HZle) (:text |css/row)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:padding-top)
                                      |j $ %{} :Leaf (:at 1520614406739) (:by |root) (:text |16)
                      |v $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-sidebar)
                          |j $ %{} :Expr (:at 1519834383404) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1519834385056) (:by |root) (:text |or)
                              |T $ %{} :Expr (:at 1619548279463) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689691971570) (:by |bjmr3HZle) (:text |nth)
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |router)
                                  |b $ %{} :Leaf (:at 1690724662823) (:by |bjmr3HZle) (:text |0)
                              |j $ %{} :Leaf (:at 1519834387774) (:by |root) (:text ||index.html)
                      |x $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1651247162994) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651247165611) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1651247203682) (:by |bjmr3HZle)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1651247205376) (:by |bjmr3HZle) (:text |str-spaced)
                                      |T $ %{} :Leaf (:at 1651247165988) (:by |bjmr3HZle) (:text |css/expand)
                                      |b $ %{} :Leaf (:at 1651247208338) (:by |bjmr3HZle) (:text |css-content)
                          |r $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |tag-match)
                              |b $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |router)
                              |h $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |:index)
                                  |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |comp-home)
                              |l $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |:index)
                                  |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |comp-home)
                              |o $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |:widgets)
                                  |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |comp-widgets-page)
                                      |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |>>)
                                          |b $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |states)
                                          |h $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |:widgets)
                              |q $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |:layouts)
                                  |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |comp-layouts-page)
                              |t $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |:fonts)
                                  |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |comp-fonts-page)
                              |u $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |:components)
                                  |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |comp-components-page)
                                      |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |>>)
                                          |b $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |states)
                                          |h $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |:components)
                              |uT $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703008415202) (:by |bjmr3HZle) (:text |:utils)
                                  |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703008419014) (:by |bjmr3HZle) (:text |comp-utils-page)
                              |v $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |:404)
                                      |b $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |pp)
                                  |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |<>)
                                      |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1693243483154) (:by |bjmr3HZle) (:text |to-lispy-string)
                                          |b $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |router)
                              |w $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |_)
                                  |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |do)
                                      |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |eprintln)
                                          |b $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text "|\"unknown router")
                                          |h $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |router)
                                      |h $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |comp-home)
                      |y $ %{} :Expr (:at 1702316609152) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702316609596) (:by |bjmr3HZle) (:text |if)
                          |b $ %{} :Leaf (:at 1702316634680) (:by |bjmr3HZle) (:text |dev?)
                          |h $ %{} :Expr (:at 1702316636338) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702316635656) (:by |bjmr3HZle) (:text |comp-inspect)
                              |X $ %{} :Leaf (:at 1702316639777) (:by |bjmr3HZle) (:text "|\"Store")
                              |b $ %{} :Leaf (:at 1702316638331) (:by |bjmr3HZle) (:text |store)
                              |h $ %{} :Expr (:at 1702316641608) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702316641937) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1702316648692) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702316649893) (:by |bjmr3HZle) (:text |:bottom)
                                      |b $ %{} :Leaf (:at 1702316650252) (:by |bjmr3HZle) (:text |0)
        |comp-utils-page $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1703008423140) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1703008425506) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1703008423140) (:by |bjmr3HZle) (:text |comp-utils-page)
              |h $ %{} :Expr (:at 1703008423140) (:by |bjmr3HZle)
                :data $ {}
              |l $ %{} :Expr (:at 1703008426628) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1703008427096) (:by |bjmr3HZle) (:text |div)
                  |b $ %{} :Expr (:at 1703008427372) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1703008429248) (:by |bjmr3HZle) (:text |{})
                  |h $ %{} :Expr (:at 1703008490638) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1703008491312) (:by |bjmr3HZle) (:text |div)
                      |L $ %{} :Expr (:at 1703008491529) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703008493304) (:by |bjmr3HZle) (:text |{})
                      |T $ %{} :Expr (:at 1703008429772) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703008430296) (:by |bjmr3HZle) (:text |<>)
                          |b $ %{} :Leaf (:at 1703008490155) (:by |bjmr3HZle) (:text "|\"Utils")
                  |l $ %{} :Expr (:at 1703008494392) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1703008496078) (:by |bjmr3HZle) (:text |div)
                      |b $ %{} :Expr (:at 1703008496298) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703008496610) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1703684069254) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703684072675) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Expr (:at 1703684073539) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703684075501) (:by |bjmr3HZle) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1703684077533) (:by |bjmr3HZle) (:text |css/column)
                                  |h $ %{} :Leaf (:at 1703684079786) (:by |bjmr3HZle) (:text |css/gap8)
                      |h $ %{} :Expr (:at 1703008497693) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703008500313) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1703008500944) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703008501246) (:by |bjmr3HZle) (:text |{})
                          |h $ %{} :Expr (:at 1703008502146) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703008503317) (:by |bjmr3HZle) (:text |<>)
                              |b $ %{} :Leaf (:at 1703009366079) (:by |bjmr3HZle) (:text "|\"tab-echo! to open new tab and show EDN data.")
                      |l $ %{} :Expr (:at 1703009372945) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1703009373607) (:by |bjmr3HZle) (:text |div)
                          |L $ %{} :Expr (:at 1703009373840) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009374108) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1703009377138) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703009380069) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1703009463000) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703009463000) (:by |bjmr3HZle) (:text |str-spaced)
                                      |b $ %{} :Leaf (:at 1703009463000) (:by |bjmr3HZle) (:text |css/row)
                                      |h $ %{} :Leaf (:at 1703009463000) (:by |bjmr3HZle) (:text |css/gap8)
                          |T $ %{} :Expr (:at 1703008507711) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703008508681) (:by |bjmr3HZle) (:text |div)
                              |b $ %{} :Expr (:at 1703008508892) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703008511540) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1703008579001) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703008581077) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1703008583249) (:by |bjmr3HZle)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1703008585086) (:by |bjmr3HZle) (:text |str-spaced)
                                          |T $ %{} :Leaf (:at 1703008582219) (:by |bjmr3HZle) (:text |css/row)
                                          |b $ %{} :Leaf (:at 1703008587942) (:by |bjmr3HZle) (:text |css/gap8)
                              |h $ %{} :Expr (:at 1703008512126) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703008514818) (:by |bjmr3HZle) (:text |button)
                                  |b $ %{} :Expr (:at 1703008515103) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703008515357) (:by |bjmr3HZle) (:text |{})
                                      |b $ %{} :Expr (:at 1703008515698) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1703008518138) (:by |bjmr3HZle) (:text |:inner-text)
                                          |b $ %{} :Leaf (:at 1703008519048) (:by |bjmr3HZle) (:text "|\"Echo")
                                      |e $ %{} :Expr (:at 1703008688635) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1703008690190) (:by |bjmr3HZle) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1703008692656) (:by |bjmr3HZle) (:text |css/button)
                                      |h $ %{} :Expr (:at 1703008520439) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1703008521914) (:by |bjmr3HZle) (:text |:on-click)
                                          |b $ %{} :Expr (:at 1703008522282) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1703008522606) (:by |bjmr3HZle) (:text |fn)
                                              |b $ %{} :Expr (:at 1703008522858) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1703008523922) (:by |bjmr3HZle) (:text |e)
                                                  |b $ %{} :Leaf (:at 1703008524531) (:by |bjmr3HZle) (:text |d!)
                                              |h $ %{} :Expr (:at 1703008525718) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1703008544965) (:by |bjmr3HZle) (:text |tab-echo!)
                                                  |b $ %{} :Expr (:at 1703008546241) (:by |bjmr3HZle)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1703008546588) (:by |bjmr3HZle) (:text |{})
                                                      |b $ %{} :Expr (:at 1703008555013) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1703008558281) (:by |bjmr3HZle) (:text |:type)
                                                          |b $ %{} :Leaf (:at 1703008559488) (:by |bjmr3HZle) (:text |:message)
                                                      |h $ %{} :Expr (:at 1703008559896) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1703008561074) (:by |bjmr3HZle) (:text |:demo)
                                                          |b $ %{} :Expr (:at 1703008561785) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1703008562086) (:by |bjmr3HZle) (:text |{})
                                                              |b $ %{} :Expr (:at 1703008562399) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1703008562964) (:by |bjmr3HZle) (:text |:a)
                                                                  |b $ %{} :Leaf (:at 1703008563362) (:by |bjmr3HZle) (:text |1)
                                                      |l $ %{} :Expr (:at 1703009032978) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1703009033946) (:by |bjmr3HZle) (:text |:vv)
                                                          |b $ %{} :Expr (:at 1703009034414) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1703009035071) (:by |bjmr3HZle) (:text |range)
                                                              |b $ %{} :Expr (:at 1703009172434) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1703009178558) (:by |bjmr3HZle) (:text |js/Math.floor)
                                                                  |T $ %{} :Expr (:at 1703009169730) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1703009170466) (:by |bjmr3HZle) (:text |*)
                                                                      |L $ %{} :Leaf (:at 1703009171639) (:by |bjmr3HZle) (:text |100)
                                                                      |T $ %{} :Expr (:at 1703009158835) (:by |bjmr3HZle)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1703009166241) (:by |bjmr3HZle) (:text |js/Math.random)
                          |b $ %{} :Expr (:at 1703009384352) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009433786) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1721067372141) (:by |bjmr3HZle) (:text "|\"respo-ui.util/tab-echo! data")
                              |h $ %{} :Expr (:at 1703009451813) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703009452208) (:by |bjmr3HZle) (:text |{})
                      |o $ %{} :Expr (:at 1703009372945) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1703009373607) (:by |bjmr3HZle) (:text |div)
                          |L $ %{} :Expr (:at 1703009373840) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009374108) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1703009377138) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703009380069) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1703009463000) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703009463000) (:by |bjmr3HZle) (:text |str-spaced)
                                      |b $ %{} :Leaf (:at 1703009463000) (:by |bjmr3HZle) (:text |css/row)
                                      |h $ %{} :Leaf (:at 1703009463000) (:by |bjmr3HZle) (:text |css/gap8)
                          |T $ %{} :Expr (:at 1703008507711) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703008508681) (:by |bjmr3HZle) (:text |div)
                              |b $ %{} :Expr (:at 1703008508892) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703008511540) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1703008579001) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703008581077) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1703008583249) (:by |bjmr3HZle)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1703008585086) (:by |bjmr3HZle) (:text |str-spaced)
                                          |T $ %{} :Leaf (:at 1703008582219) (:by |bjmr3HZle) (:text |css/row)
                                          |b $ %{} :Leaf (:at 1703008587942) (:by |bjmr3HZle) (:text |css/gap8)
                              |h $ %{} :Expr (:at 1703008512126) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703008514818) (:by |bjmr3HZle) (:text |button)
                                  |b $ %{} :Expr (:at 1703008515103) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703008515357) (:by |bjmr3HZle) (:text |{})
                                      |b $ %{} :Expr (:at 1703008515698) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1703008518138) (:by |bjmr3HZle) (:text |:inner-text)
                                          |b $ %{} :Leaf (:at 1703008519048) (:by |bjmr3HZle) (:text "|\"Echo")
                                      |e $ %{} :Expr (:at 1703008688635) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1703008690190) (:by |bjmr3HZle) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1703008692656) (:by |bjmr3HZle) (:text |css/button)
                                      |h $ %{} :Expr (:at 1703008520439) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1703008521914) (:by |bjmr3HZle) (:text |:on-click)
                                          |b $ %{} :Expr (:at 1703008522282) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1703008522606) (:by |bjmr3HZle) (:text |fn)
                                              |b $ %{} :Expr (:at 1703008522858) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1703008523922) (:by |bjmr3HZle) (:text |e)
                                                  |b $ %{} :Leaf (:at 1703008524531) (:by |bjmr3HZle) (:text |d!)
                                              |h $ %{} :Expr (:at 1703008525718) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1703008544965) (:by |bjmr3HZle) (:text |tab-echo!)
                                                  |b $ %{} :Expr (:at 1703008546241) (:by |bjmr3HZle)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1703008546588) (:by |bjmr3HZle) (:text |{})
                                                      |b $ %{} :Expr (:at 1703008555013) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1703008558281) (:by |bjmr3HZle) (:text |:type)
                                                          |b $ %{} :Leaf (:at 1703008559488) (:by |bjmr3HZle) (:text |:message)
                                                      |h $ %{} :Expr (:at 1703008559896) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1703008561074) (:by |bjmr3HZle) (:text |:demo)
                                                          |b $ %{} :Expr (:at 1703008561785) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1703008562086) (:by |bjmr3HZle) (:text |{})
                                                              |b $ %{} :Expr (:at 1703008562399) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1703008562964) (:by |bjmr3HZle) (:text |:a)
                                                                  |b $ %{} :Leaf (:at 1703008563362) (:by |bjmr3HZle) (:text |1)
                                                      |l $ %{} :Expr (:at 1703684018862) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1703684023120) (:by |bjmr3HZle) (:text |:html)
                                                          |b $ %{} :Leaf (:at 1703684038143) (:by |bjmr3HZle) (:text "|\"code <code> cc c cc </code>")
                                                  |h $ %{} :Leaf (:at 1703683595494) (:by |bjmr3HZle) (:text |:json)
                          |b $ %{} :Expr (:at 1703009384352) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009433786) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1721067373990) (:by |bjmr3HZle) (:text "|\"respo-ui.util/tab-echo! data :json")
                              |h $ %{} :Expr (:at 1703009451813) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703009452208) (:by |bjmr3HZle) (:text |{})
                      |q $ %{} :Expr (:at 1703009372945) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1703009373607) (:by |bjmr3HZle) (:text |div)
                          |L $ %{} :Expr (:at 1703009373840) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009374108) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1703009377138) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703009380069) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1703009463000) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703009463000) (:by |bjmr3HZle) (:text |str-spaced)
                                      |b $ %{} :Leaf (:at 1703009463000) (:by |bjmr3HZle) (:text |css/row)
                                      |h $ %{} :Leaf (:at 1703009463000) (:by |bjmr3HZle) (:text |css/gap8)
                          |T $ %{} :Expr (:at 1703008507711) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703008508681) (:by |bjmr3HZle) (:text |div)
                              |b $ %{} :Expr (:at 1703008508892) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703008511540) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1703008579001) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703008581077) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1703008583249) (:by |bjmr3HZle)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1703008585086) (:by |bjmr3HZle) (:text |str-spaced)
                                          |T $ %{} :Leaf (:at 1703008582219) (:by |bjmr3HZle) (:text |css/row)
                                          |b $ %{} :Leaf (:at 1703008587942) (:by |bjmr3HZle) (:text |css/gap8)
                              |h $ %{} :Expr (:at 1703008512126) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703008514818) (:by |bjmr3HZle) (:text |button)
                                  |b $ %{} :Expr (:at 1703008515103) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703008515357) (:by |bjmr3HZle) (:text |{})
                                      |b $ %{} :Expr (:at 1703008515698) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1703008518138) (:by |bjmr3HZle) (:text |:inner-text)
                                          |b $ %{} :Leaf (:at 1703008519048) (:by |bjmr3HZle) (:text "|\"Echo")
                                      |e $ %{} :Expr (:at 1703008688635) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1703008690190) (:by |bjmr3HZle) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1703008692656) (:by |bjmr3HZle) (:text |css/button)
                                      |h $ %{} :Expr (:at 1703008520439) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1703008521914) (:by |bjmr3HZle) (:text |:on-click)
                                          |b $ %{} :Expr (:at 1703008522282) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1703008522606) (:by |bjmr3HZle) (:text |fn)
                                              |b $ %{} :Expr (:at 1703008522858) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1703008523922) (:by |bjmr3HZle) (:text |e)
                                                  |b $ %{} :Leaf (:at 1703008524531) (:by |bjmr3HZle) (:text |d!)
                                              |h $ %{} :Expr (:at 1703008525718) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1703008544965) (:by |bjmr3HZle) (:text |tab-echo!)
                                                  |b $ %{} :Expr (:at 1703008546241) (:by |bjmr3HZle)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1703008546588) (:by |bjmr3HZle) (:text |{})
                                                      |b $ %{} :Expr (:at 1703008555013) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1703008558281) (:by |bjmr3HZle) (:text |:type)
                                                          |b $ %{} :Leaf (:at 1703008559488) (:by |bjmr3HZle) (:text |:message)
                                                      |h $ %{} :Expr (:at 1703008559896) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1703008561074) (:by |bjmr3HZle) (:text |:demo)
                                                          |b $ %{} :Expr (:at 1703008561785) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1703008562086) (:by |bjmr3HZle) (:text |{})
                                                              |b $ %{} :Expr (:at 1703008562399) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1703008562964) (:by |bjmr3HZle) (:text |:a)
                                                                  |b $ %{} :Leaf (:at 1703008563362) (:by |bjmr3HZle) (:text |1)
                                                      |l $ %{} :Expr (:at 1703684018862) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1703684023120) (:by |bjmr3HZle) (:text |:html)
                                                          |b $ %{} :Leaf (:at 1703684038143) (:by |bjmr3HZle) (:text "|\"code <code> cc c cc </code>")
                                                  |h $ %{} :Leaf (:at 1703777168181) (:by |bjmr3HZle) (:text |:edn)
                          |b $ %{} :Expr (:at 1703009384352) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009433786) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1721067375771) (:by |bjmr3HZle) (:text "|\"respo-ui.util/tab-echo! data :edn")
                              |h $ %{} :Expr (:at 1703009451813) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703009452208) (:by |bjmr3HZle) (:text |{})
        |css-content $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651247181925) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1651247180580) (:by |bjmr3HZle) (:text |css-content)
              |r $ %{} :Expr (:at 1651247183155) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651247185629) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651247186051) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651247187461) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |8)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.container)
            |r $ %{} :Expr (:at 1506675837748) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610553682619) (:by |bjmr3HZle) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1506676716292) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540954170546) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1506676721662) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506676721832) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506676724418) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1586624932378) (:by |bjmr3HZle) (:text |>>)
                        |r $ %{} :Leaf (:at 1506676725144) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1506676725780) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1506676726636) (:by |root) (:text |input)
                        |xT $ %{} :Leaf (:at 1703008594210) (:by |bjmr3HZle) (:text |button)
                        |y $ %{} :Leaf (:at 1506676727755) (:by |root) (:text |<>)
                |y $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677014345) (:by |root) (:text |=<)
                |yD $ %{} :Expr (:at 1702316595494) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1702316601179) (:by |bjmr3HZle) (:text |respo.comp.inspect)
                    |b $ %{} :Leaf (:at 1702316602762) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1702316602967) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1702316605550) (:by |bjmr3HZle) (:text |comp-inspect)
                |yT $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516428632289) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ui)
                |yr $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.sidebar)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-sidebar)
                |yv $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.home)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-home)
                |yy $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.widgets-page)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-widgets-page)
                |yyT $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.layouts-page)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-layouts-page)
                |yyj $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.fonts-page)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-fonts-page)
                |yyn $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1600160485463) (:by |bjmr3HZle) (:text |respo-ui.comp.components)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1600160474914) (:by |bjmr3HZle) (:text |comp-components-page)
                |yz $ %{} :Expr (:at 1651247191633) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651247193578) (:by |bjmr3HZle) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1651247194356) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1651247195358) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651247197506) (:by |bjmr3HZle) (:text |defstyle)
                |z $ %{} :Expr (:at 1651246544447) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651246546577) (:by |bjmr3HZle) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1651246547009) (:by |bjmr3HZle) (:text |:as)
                    |h $ %{} :Leaf (:at 1651246547616) (:by |bjmr3HZle) (:text |css)
                |zD $ %{} :Expr (:at 1702316619290) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1702316628669) (:by |bjmr3HZle) (:text |respo-ui.config)
                    |b $ %{} :Leaf (:at 1702316630187) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1702316630982) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1702316631863) (:by |bjmr3HZle) (:text |dev?)
                |zP $ %{} :Expr (:at 1703008531780) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1703008534064) (:by |bjmr3HZle) (:text |respo-ui.util)
                    |b $ %{} :Leaf (:at 1703008535065) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1703008535321) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1703008539028) (:by |bjmr3HZle) (:text |tab-echo!)
                |zY $ %{} :Expr (:at 1703009399024) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1703009401746) (:by |bjmr3HZle) (:text |respo-ui.comp)
                    |b $ %{} :Leaf (:at 1703009403065) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1703009403263) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1703009436726) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
    |respo-ui.comp.fonts-page $ %{} :FileEntry
      :defs $ {}
        |comp-fonts-page $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506677788693) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-fonts-page)
              |n $ %{} :Expr (:at 1506677786618) (:by |root)
                :data $ {}
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1516429729542) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1516429730422) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1516429733597) (:by |root) (:text |style-section)
                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506677791613) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1519577223311) (:by |root) (:text "||Normal fonts")
                  |t $ %{} :Expr (:at 1519577141650) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519668934088) (:by |root) (:text |comp-md-block)
                      |j $ %{} :Leaf (:at 1699981704562) (:by |bjmr3HZle) (:text "||which can be used with `css/font-normal`. It's Hind fonts.")
                      |r $ %{} :Expr (:at 1519577170616) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519577171487) (:by |root) (:text |{})
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-font-demo)
                      |j $ %{} :Leaf (:at 1657793236298) (:by |bjmr3HZle) (:text |css/font-normal)
                      |n $ %{} :Leaf (:at 1657793309049) (:by |bjmr3HZle) (:text |ui/font-normal)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |300)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-font-demo)
                      |j $ %{} :Leaf (:at 1657793238052) (:by |bjmr3HZle) (:text |css/font-normal)
                      |n $ %{} :Leaf (:at 1657793311806) (:by |bjmr3HZle) (:text |ui/font-normal)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |400)
                  |y $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-font-demo)
                      |j $ %{} :Leaf (:at 1657793239253) (:by |bjmr3HZle) (:text |css/font-normal)
                      |n $ %{} :Leaf (:at 1657793312712) (:by |bjmr3HZle) (:text |ui/font-normal)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |500)
                  |yD $ %{} :Expr (:at 1519577060707) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519577061513) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1519577062176) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1519577064222) (:by |root) (:text |32)
                  |yT $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1516429729542) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1516429730422) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1516429733597) (:by |root) (:text |style-section)
                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506677795122) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1519577221566) (:by |root) (:text "||Fancy fonts")
                  |yb $ %{} :Expr (:at 1519577141650) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519668936492) (:by |root) (:text |comp-md-block)
                      |j $ %{} :Leaf (:at 1699981706603) (:by |bjmr3HZle) (:text "||which can be used with `css/font-fancy`. Josefin Sans is used here.")
                      |r $ %{} :Expr (:at 1519577170616) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519577171487) (:by |root) (:text |{})
                  |yj $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-font-demo)
                      |j $ %{} :Leaf (:at 1691559264685) (:by |bjmr3HZle) (:text |css/font-fancy!)
                      |n $ %{} :Leaf (:at 1657793317851) (:by |bjmr3HZle) (:text |ui/font-fancy)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |100)
                  |yr $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-font-demo)
                      |j $ %{} :Leaf (:at 1691559263390) (:by |bjmr3HZle) (:text |css/font-fancy!)
                      |n $ %{} :Leaf (:at 1657793319554) (:by |bjmr3HZle) (:text |ui/font-fancy)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |300)
                  |yv $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-font-demo)
                      |j $ %{} :Leaf (:at 1691559261758) (:by |bjmr3HZle) (:text |css/font-fancy!)
                      |n $ %{} :Leaf (:at 1657793320311) (:by |bjmr3HZle) (:text |ui/font-fancy)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |400)
                  |yw $ %{} :Expr (:at 1519577084434) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519577085696) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1519577086273) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1519577087369) (:by |root) (:text |32)
                  |yx $ %{} :Expr (:at 1516429456223) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1516429456690) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1516429456928) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1516429457287) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1516429729542) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1516429730422) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1516429733597) (:by |root) (:text |style-section)
                      |r $ %{} :Expr (:at 1516429459173) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1516429460711) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1519577138193) (:by |root) (:text "||Code fonts")
                  |yxT $ %{} :Expr (:at 1519577141650) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519668938504) (:by |root) (:text |comp-md-block)
                      |j $ %{} :Leaf (:at 1699981711706) (:by |bjmr3HZle) (:text "||which can be used with `css/font-code`.")
                      |r $ %{} :Expr (:at 1519577170616) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519577171487) (:by |root) (:text |{})
                  |yy $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-font-demo)
                      |j $ %{} :Leaf (:at 1657793246052) (:by |bjmr3HZle) (:text |css/font-code)
                      |n $ %{} :Leaf (:at 1657793323094) (:by |bjmr3HZle) (:text |ui/font-code)
                      |r $ %{} :Leaf (:at 1516429508326) (:by |root) (:text |100)
                  |yyT $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-font-demo)
                      |j $ %{} :Leaf (:at 1657793247575) (:by |bjmr3HZle) (:text |css/font-code)
                      |n $ %{} :Leaf (:at 1657793325515) (:by |bjmr3HZle) (:text |ui/font-code)
                      |r $ %{} :Leaf (:at 1516429511339) (:by |root) (:text |300)
                  |yyj $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-font-demo)
                      |j $ %{} :Leaf (:at 1657793248783) (:by |bjmr3HZle) (:text |css/font-code)
                      |n $ %{} :Leaf (:at 1657793326312) (:by |bjmr3HZle) (:text |ui/font-code)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |400)
        |css-demo $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651247893097) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1651247912156) (:by |bjmr3HZle) (:text |css-demo)
              |r $ %{} :Expr (:at 1651247893905) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651247895154) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651247895578) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651247937831) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1651247886051) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651247886051) (:by |bjmr3HZle) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1651247886051) (:by |bjmr3HZle) (:text |16)
                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-weight)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||bold)
                          |v $ %{} :Expr (:at 1651247879249) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651247879249) (:by |bjmr3HZle) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1651247879249) (:by |bjmr3HZle) (:text ||32px)
        |render-font-demo $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-font-demo)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657793278032) (:by |bjmr3HZle) (:text |css-family)
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |family)
                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |weight)
              |v $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1651247903345) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651247905692) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Expr (:at 1657793252061) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1657793255734) (:by |bjmr3HZle) (:text |str-spaced)
                              |H $ %{} :Leaf (:at 1657793281416) (:by |bjmr3HZle) (:text |css-family)
                              |T $ %{} :Leaf (:at 1651247914481) (:by |bjmr3HZle) (:text |css-demo)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:style)
                          |n $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-weight)
                                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |weight)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506677802372) (:by |root) (:text |<>)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |str)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text "||This is a demo of the font, guess what you like: ")
                          |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |family)
                          |v $ %{} :Leaf (:at 1506675837748) (:by |root) (:text "|| ")
                          |x $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |weight)
        |style-section $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1516429739769) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1516429740841) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1516429739769) (:by |root) (:text |style-section)
              |r $ %{} :Expr (:at 1516429739769) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1516429741925) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1516429742201) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1516429743351) (:by |root) (:text |:font-size)
                      |j $ %{} :Leaf (:at 1519577094113) (:by |root) (:text |24)
                  |r $ %{} :Expr (:at 1516429745998) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1516429751881) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1516429757322) (:by |root) (:text |ui/font-fancy)
                  |v $ %{} :Expr (:at 1516429758298) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1516429762988) (:by |root) (:text |:line-height)
                      |j $ %{} :Leaf (:at 1516429774265) (:by |root) (:text ||60px)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.fonts-page)
            |r $ %{} :Expr (:at 1506675837748) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1506678033592) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540954489933) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1506678039567) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506678039760) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506678041035) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1506678041627) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1506678257900) (:by |root) (:text |<>)
                |n $ %{} :Expr (:at 1657793227436) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657793231414) (:by |bjmr3HZle) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657793231933) (:by |bjmr3HZle) (:text |:as)
                    |h $ %{} :Leaf (:at 1657793232667) (:by |bjmr3HZle) (:text |css)
                |r $ %{} :Expr (:at 1516429514655) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516429520069) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1516429521659) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1516429522827) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1519577069594) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519577074905) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1519577075563) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519577075813) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519577077288) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1519577182581) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1644510528062) (:by |bjmr3HZle) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1519577192319) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519577192991) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519668941267) (:by |root) (:text |comp-md-block)
                |y $ %{} :Expr (:at 1651247925589) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651247926875) (:by |bjmr3HZle) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1651247930163) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1651247930398) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651247931720) (:by |bjmr3HZle) (:text |defstyle)
    |respo-ui.comp.home $ %{} :FileEntry
      :defs $ {}
        |comp-home $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506677198048) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-home)
              |r $ %{} :Expr (:at 1506677200900) (:by |root)
                :data $ {}
              |v $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1506677271274) (:by |root) (:text |style-home)
                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506677236298) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text "||Styles for Respo")
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506678668150) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |32)
                  |y $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                      |t $ %{} :Expr (:at 1520614578969) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520615005789) (:by |root) (:text |comp-md-block)
                          |j $ %{} :Leaf (:at 1644510570048) (:by |bjmr3HZle) (:text "||Respo UI is some minimal style collections for creating small pieces of apps. It includes variables for Flexbox layouts, basic button and input styles, fonts like \"Josefin Sans\" and \"Hind\".\n\nYou may read code on [GitHub](http://github.com/Respo/respo-ui). [Fonts files](https://github.com/tiye/favored-fonts) are hosted separately on my server.")
                          |r $ %{} :Expr (:at 1520615006566) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520615006905) (:by |root) (:text |{})
        |style-home $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506677271274) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1506677271274) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506677271274) (:by |root) (:text |style-home)
              |r $ %{} :Expr (:at 1506677271274) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506677271274) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506677271274) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506677271274) (:by |root) (:text |:font-size)
                      |j $ %{} :Leaf (:at 1519834626669) (:by |root) (:text |32)
                  |r $ %{} :Expr (:at 1506677271274) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506677271274) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1506677271274) (:by |root) (:text "||Josefin Sans")
                  |v $ %{} :Expr (:at 1506677271274) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506677271274) (:by |root) (:text |:color)
                      |j $ %{} :Expr (:at 1557076484695) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1557076484695) (:by |bjmr3HZle) (:text |hsl)
                          |j $ %{} :Leaf (:at 1557076484695) (:by |bjmr3HZle) (:text |200)
                          |r $ %{} :Leaf (:at 1557076484695) (:by |bjmr3HZle) (:text |100)
                          |v $ %{} :Leaf (:at 1557076484695) (:by |bjmr3HZle) (:text |76)
                  |x $ %{} :Expr (:at 1506677271274) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506677271274) (:by |root) (:text |:font-weight)
                      |j $ %{} :Leaf (:at 1506677271274) (:by |root) (:text |100)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.home)
            |r $ %{} :Expr (:at 1506675837748) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:require)
                |p $ %{} :Expr (:at 1506677207583) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540954190328) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1506677212497) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506677212722) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677217657) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1506677218178) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1506677218787) (:by |root) (:text |a)
                        |x $ %{} :Leaf (:at 1506677219679) (:by |root) (:text |img)
                        |y $ %{} :Leaf (:at 1506678651450) (:by |root) (:text |<>)
                |v $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677233235) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1557076495836) (:by |bjmr3HZle)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610553693743) (:by |bjmr3HZle) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1557076498986) (:by |bjmr3HZle) (:text |:refer)
                    |v $ %{} :Expr (:at 1557076499158) (:by |bjmr3HZle)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1557076499838) (:by |bjmr3HZle) (:text |hsl)
                |yj $ %{} :Expr (:at 1644510363861) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1644510371323) (:by |bjmr3HZle) (:text |respo-md.comp.md)
                    |j $ %{} :Leaf (:at 1644510372363) (:by |bjmr3HZle) (:text |:refer)
                    |r $ %{} :Expr (:at 1644510372963) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1644510377340) (:by |bjmr3HZle) (:text |comp-md-block)
    |respo-ui.comp.layouts-page $ %{} :FileEntry
      :defs $ {}
        |comp-layouts-page $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506677713651) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-layouts-page)
              |n $ %{} :Expr (:at 1506677710948) (:by |root)
                :data $ {}
              |r $ %{} :Expr (:at 1519575043444) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1519575044210) (:by |root) (:text |div)
                  |L $ %{} :Expr (:at 1519575044799) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519575046598) (:by |root) (:text |{})
                  |P $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506677715988) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1506678623178) (:by |root) (:text ||Layouts)
                  |R $ %{} :Expr (:at 1519576696984) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519668912232) (:by |root) (:text |comp-md-block)
                      |j $ %{} :Leaf (:at 1696271060569) (:by |bjmr3HZle) (:text "||Flexbox styles are defined in variables like `css/row` `css/center` in flex containers. Here are how they take effects.")
                      |r $ %{} :Expr (:at 1519576713614) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519576713880) (:by |root) (:text |{})
                  |T $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1651247111865) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651247114509) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1651247119809) (:by |bjmr3HZle) (:text |css/row)
                          |j $ %{} :Expr (:at 1519575055580) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575056386) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1519575061771) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519575062124) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1519575062353) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519575068242) (:by |root) (:text |:flex-wrap)
                                      |j $ %{} :Leaf (:at 1519575069234) (:by |root) (:text |:wrap)
                                  |r $ %{} :Expr (:at 1519575162374) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519575165050) (:by |root) (:text |:font-family)
                                      |j $ %{} :Leaf (:at 1519575171526) (:by |root) (:text |ui/font-code)
                                  |v $ %{} :Expr (:at 1519575172515) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519575173991) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1519575179178) (:by |root) (:text |12)
                      |o $ %{} :Expr (:at 1519575269970) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                          |b $ %{} :Leaf (:at 1696271031999) (:by |bjmr3HZle) (:text ||center)
                          |j $ %{} :Leaf (:at 1651246868535) (:by |bjmr3HZle) (:text |css/center)
                      |p $ %{} :Expr (:at 1519575269970) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                          |b $ %{} :Leaf (:at 1696271033937) (:by |bjmr3HZle) (:text ||row-center)
                          |j $ %{} :Leaf (:at 1651246891685) (:by |bjmr3HZle) (:text |css/row-center)
                      |pT $ %{} :Expr (:at 1519575269970) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                          |b $ %{} :Leaf (:at 1696271035422) (:by |bjmr3HZle) (:text ||row-middle)
                          |j $ %{} :Leaf (:at 1651246905859) (:by |bjmr3HZle) (:text |css/row-middle)
                      |q $ %{} :Expr (:at 1519575269970) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                          |b $ %{} :Leaf (:at 1696271037334) (:by |bjmr3HZle) (:text ||row)
                          |j $ %{} :Leaf (:at 1651246924855) (:by |bjmr3HZle) (:text |css/row)
                      |r $ %{} :Expr (:at 1519575269970) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                          |b $ %{} :Leaf (:at 1696271039848) (:by |bjmr3HZle) (:text ||column)
                          |j $ %{} :Leaf (:at 1651246931541) (:by |bjmr3HZle) (:text |css/column)
                      |s $ %{} :Expr (:at 1519575269970) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                          |b $ %{} :Leaf (:at 1696271041222) (:by |bjmr3HZle) (:text ||row-parted)
                          |j $ %{} :Leaf (:at 1651246943576) (:by |bjmr3HZle) (:text |css/row-parted)
                      |sT $ %{} :Expr (:at 1519575269970) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                          |b $ %{} :Leaf (:at 1696271044752) (:by |bjmr3HZle) (:text ||column-parted)
                          |j $ %{} :Leaf (:at 1651246959487) (:by |bjmr3HZle) (:text |css/column-parted)
                      |sr $ %{} :Expr (:at 1519575269970) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                          |b $ %{} :Leaf (:at 1696271046163) (:by |bjmr3HZle) (:text ||row-dispersive)
                          |j $ %{} :Leaf (:at 1651246971943) (:by |bjmr3HZle) (:text |css/row-dispersive)
                      |sv $ %{} :Expr (:at 1519575269970) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                          |b $ %{} :Leaf (:at 1696271047333) (:by |bjmr3HZle) (:text ||column-dispersive)
                          |j $ %{} :Leaf (:at 1651246981611) (:by |bjmr3HZle) (:text |css/column-dispersive)
                      |v $ %{} :Expr (:at 1519575269970) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                          |b $ %{} :Leaf (:at 1696271048502) (:by |bjmr3HZle) (:text ||row-evenly)
                          |j $ %{} :Leaf (:at 1651246992611) (:by |bjmr3HZle) (:text |css/row-evenly)
                      |x $ %{} :Expr (:at 1519575269970) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                          |b $ %{} :Leaf (:at 1696271050515) (:by |bjmr3HZle) (:text ||column-evenly)
                          |j $ %{} :Leaf (:at 1651247001794) (:by |bjmr3HZle) (:text |css/column-evenly)
        |css-sample $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519575431466) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246769429) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1651246795129) (:by |bjmr3HZle) (:text |css-sample)
              |r $ %{} :Expr (:at 1651246771092) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246771609) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246772105) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246773564) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1519575431466) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575433047) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1519575433428) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575434746) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1696270994532) (:by |bjmr3HZle) (:text "||4px 8px")
                          |v $ %{} :Expr (:at 1519575539459) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575541320) (:by |root) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1519575541762) (:by |root) (:text |12)
                          |w $ %{} :Expr (:at 1696270998483) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696271000940) (:by |bjmr3HZle) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1696271003275) (:by |bjmr3HZle) (:text "|\"20px")
                          |x $ %{} :Expr (:at 1519575544570) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575547474) (:by |root) (:text |:font-family)
                              |j $ %{} :Leaf (:at 1519575550970) (:by |root) (:text |ui/font-code)
                          |xT $ %{} :Expr (:at 1696270923967) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696270927049) (:by |bjmr3HZle) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1696270928380) (:by |bjmr3HZle) (:text "|\"4px")
                          |y $ %{} :Expr (:at 1696270900174) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696270902695) (:by |bjmr3HZle) (:text |:border)
                              |b $ %{} :Expr (:at 1696270903026) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696270903510) (:by |bjmr3HZle) (:text |str)
                                  |b $ %{} :Leaf (:at 1696270934749) (:by |bjmr3HZle) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1696270907238) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696270908197) (:by |bjmr3HZle) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1696270908508) (:by |bjmr3HZle) (:text |0)
                                      |h $ %{} :Leaf (:at 1696270908822) (:by |bjmr3HZle) (:text |0)
                                      |l $ %{} :Leaf (:at 1696270909231) (:by |bjmr3HZle) (:text |80)
                          |z $ %{} :Expr (:at 1696270985822) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696270985822) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1696270985822) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696270985822) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1696270985822) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1696270985822) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1696270988343) (:by |bjmr3HZle) (:text |30)
        |render-demo $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519575283180) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1519575283180) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1519575283180) (:by |root) (:text |render-demo)
              |r $ %{} :Expr (:at 1519575283180) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1519575316880) (:by |root) (:text |title)
                  |T $ %{} :Leaf (:at 1651246864419) (:by |bjmr3HZle) (:text |layout-cls)
              |v $ %{} :Expr (:at 1519575287396) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519575288023) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1519575288267) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519575289554) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1519575289920) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575295750) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1519575296106) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575296456) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1519575633439) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519575635902) (:by |root) (:text |:margin)
                                  |j $ %{} :Leaf (:at 1519575656186) (:by |root) (:text |16)
                  |r $ %{} :Expr (:at 1519575297575) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519575297978) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1519575298178) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575298465) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1519575298714) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575300185) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1519575300825) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519575301137) (:by |root) (:text |{})
                      |r $ %{} :Expr (:at 1519575302589) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575303739) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1519575314384) (:by |root) (:text |title)
                  |v $ %{} :Expr (:at 1519575320653) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519575321608) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1519575321810) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575322100) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1651246850799) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651246852823) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1651246862034) (:by |bjmr3HZle) (:text |layout-cls)
                          |j $ %{} :Expr (:at 1519575322495) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575323204) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1519575358535) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519575358928) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1519575359145) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519575361201) (:by |root) (:text |:border)
                                      |j $ %{} :Expr (:at 1519575362246) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519575362820) (:by |root) (:text |str)
                                          |j $ %{} :Leaf (:at 1519575365414) (:by |root) (:text "||1px solid ")
                                          |r $ %{} :Expr (:at 1519575366496) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519575366937) (:by |root) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1519575367942) (:by |root) (:text |0)
                                              |r $ %{} :Leaf (:at 1519575368326) (:by |root) (:text |0)
                                              |v $ %{} :Leaf (:at 1519575722381) (:by |root) (:text |86)
                                  |r $ %{} :Expr (:at 1519575465182) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519575468273) (:by |root) (:text |:width)
                                      |j $ %{} :Leaf (:at 1519575527040) (:by |root) (:text |120)
                                  |v $ %{} :Expr (:at 1519575473941) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519575474962) (:by |root) (:text |:height)
                                      |j $ %{} :Leaf (:at 1519575528056) (:by |root) (:text |120)
                      |r $ %{} :Expr (:at 1519575326544) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575327810) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1519575328056) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575328340) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1651246782009) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651246784897) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1651246797811) (:by |bjmr3HZle) (:text |css-sample)
                              |j $ %{} :Expr (:at 1519575332909) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651246781364) (:by |bjmr3HZle) (:text |:style)
                                  |j $ %{} :Expr (:at 1519575335938) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519575337334) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1519575337672) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1696270888329) (:by |bjmr3HZle) (:text |;)
                                          |T $ %{} :Leaf (:at 1519575340568) (:by |root) (:text |:background-color)
                                          |j $ %{} :Expr (:at 1519575681077) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519575681633) (:by |root) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1519575683236) (:by |root) (:text |0)
                                              |r $ %{} :Leaf (:at 1519575683718) (:by |root) (:text |80)
                                              |v $ %{} :Leaf (:at 1519575740149) (:by |root) (:text |70)
                          |r $ %{} :Expr (:at 1519575329604) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575330360) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1519575331355) (:by |root) (:text ||A)
                      |v $ %{} :Expr (:at 1519575326544) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575327810) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1519575328056) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575328340) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1651246801376) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651246801376) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1651246801376) (:by |bjmr3HZle) (:text |css-sample)
                              |j $ %{} :Expr (:at 1519575332909) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519575334765) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1519575335938) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519575337334) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1519575337672) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1696270889556) (:by |bjmr3HZle) (:text |;)
                                          |T $ %{} :Leaf (:at 1519575340568) (:by |root) (:text |:background-color)
                                          |j $ %{} :Expr (:at 1519575681077) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519575681633) (:by |root) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1519575697308) (:by |root) (:text |120)
                                              |r $ %{} :Leaf (:at 1519575683718) (:by |root) (:text |80)
                                              |v $ %{} :Leaf (:at 1519575742070) (:by |root) (:text |70)
                          |r $ %{} :Expr (:at 1519575329604) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575330360) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1519575346204) (:by |root) (:text ||B)
                      |x $ %{} :Expr (:at 1519575326544) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519575327810) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1519575328056) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575328340) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1651246804053) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651246804053) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1651246804053) (:by |bjmr3HZle) (:text |css-sample)
                              |j $ %{} :Expr (:at 1519575332909) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519575334765) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1519575335938) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519575337334) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1519575337672) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1696270891686) (:by |bjmr3HZle) (:text |;)
                                          |T $ %{} :Leaf (:at 1519575340568) (:by |root) (:text |:background-color)
                                          |j $ %{} :Expr (:at 1519575681077) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519575681633) (:by |root) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1519575702777) (:by |root) (:text |240)
                                              |r $ %{} :Leaf (:at 1519575683718) (:by |root) (:text |80)
                                              |v $ %{} :Leaf (:at 1519575731863) (:by |root) (:text |80)
                          |r $ %{} :Expr (:at 1519575329604) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519575330360) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1519575451064) (:by |root) (:text ||C)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.layouts-page)
            |r $ %{} :Expr (:at 1506675837748) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1506677682953) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540954553491) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1506677686223) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506677686476) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677691246) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1506677691727) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1506677692096) (:by |root) (:text |a)
                        |x $ %{} :Leaf (:at 1506677692783) (:by |root) (:text |<>)
                |v $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677701173) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516428648697) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ui)
                |yT $ %{} :Expr (:at 1519575385518) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610553637475) (:by |bjmr3HZle) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1519575388514) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519575388731) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519575389355) (:by |root) (:text |hsl)
                |yj $ %{} :Expr (:at 1519576722738) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1644510539372) (:by |bjmr3HZle) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1519576730346) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519576730848) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519668924069) (:by |root) (:text |comp-md-block)
                |z $ %{} :Expr (:at 1651246818910) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651246820140) (:by |bjmr3HZle) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1651246820843) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1651246821228) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651246822988) (:by |bjmr3HZle) (:text |defstyle)
                |zD $ %{} :Expr (:at 1651246872066) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651246875169) (:by |bjmr3HZle) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1651246875690) (:by |bjmr3HZle) (:text |:as)
                    |h $ %{} :Leaf (:at 1651246876189) (:by |bjmr3HZle) (:text |css)
    |respo-ui.comp.sidebar $ %{} :FileEntry
      :defs $ {}
        |comp-sidebar $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506677161043) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-sidebar)
              |n $ %{} :Expr (:at 1506677156547) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519834292598) (:by |root) (:text |router-name)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:width)
                                  |j $ %{} :Leaf (:at 1519834724355) (:by |root) (:text |160)
                              |r $ %{} :Expr (:at 1519834754332) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519834756238) (:by |root) (:text |:margin-right)
                                  |j $ %{} :Leaf (:at 1519834905678) (:by |root) (:text |24)
                  |n $ %{} :Expr (:at 1520614300655) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1520614303317) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1520614303734) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520614304097) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1520614304788) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520614305574) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1520614306123) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520614320918) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1520614321366) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520614325068) (:by |root) (:text |:text-align)
                                      |j $ %{} :Leaf (:at 1520614326137) (:by |root) (:text |:right)
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |style-logo)
                  |p $ %{} :Expr (:at 1520614331677) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520614332862) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1520614334852) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1520614335422) (:by |root) (:text |16)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||index.html)
                      |r $ %{} :Leaf (:at 1519834817688) (:by |root) (:text "||Respo UI")
                      |v $ %{} :Expr (:at 1690724765697) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724766550) (:by |bjmr3HZle) (:text |=)
                          |L $ %{} :Leaf (:at 1690724768591) (:by |bjmr3HZle) (:text |:index)
                          |T $ %{} :Leaf (:at 1519834328668) (:by |root) (:text |router-name)
                  |yT $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||layouts.html)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Layouts)
                      |v $ %{} :Expr (:at 1690724769375) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724770631) (:by |bjmr3HZle) (:text |=)
                          |L $ %{} :Leaf (:at 1690724777185) (:by |bjmr3HZle) (:text |:layouts)
                          |T $ %{} :Leaf (:at 1519834330565) (:by |root) (:text |router-name)
                  |ys $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||widgets.html)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Widgets)
                      |v $ %{} :Expr (:at 1690724781168) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724782478) (:by |bjmr3HZle) (:text |=)
                          |L $ %{} :Leaf (:at 1690724784163) (:by |bjmr3HZle) (:text |:widgets)
                          |T $ %{} :Leaf (:at 1519834331671) (:by |root) (:text |router-name)
                  |ysT $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||fonts.html)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Fonts)
                      |v $ %{} :Expr (:at 1690724785279) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724790223) (:by |bjmr3HZle) (:text |=)
                          |L $ %{} :Leaf (:at 1690724792035) (:by |bjmr3HZle) (:text |:fonts)
                          |T $ %{} :Leaf (:at 1519834333483) (:by |root) (:text |router-name)
                  |yt $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||components.html)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Components)
                      |v $ %{} :Expr (:at 1690724793358) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724793904) (:by |bjmr3HZle) (:text |=)
                          |L $ %{} :Leaf (:at 1690724797959) (:by |bjmr3HZle) (:text |:components)
                          |T $ %{} :Leaf (:at 1519834334427) (:by |root) (:text |router-name)
                  |z $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                      |j $ %{} :Leaf (:at 1703008447927) (:by |bjmr3HZle) (:text ||utils.html)
                      |r $ %{} :Leaf (:at 1703008451394) (:by |bjmr3HZle) (:text ||Utils)
                      |v $ %{} :Expr (:at 1690724793358) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724793904) (:by |bjmr3HZle) (:text |=)
                          |L $ %{} :Leaf (:at 1703008455379) (:by |bjmr3HZle) (:text |:utils)
                          |T $ %{} :Leaf (:at 1519834334427) (:by |root) (:text |router-name)
        |css-sidebar-entry $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651248464692) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1651248466108) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1651248464692) (:by |bjmr3HZle) (:text |css-sidebar-entry)
              |h $ %{} :Expr (:at 1651248464692) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651248467608) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1651248468242) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651248470691) (:by |bjmr3HZle) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1651248474135) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1651248474135) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text ||40px)
                          |h $ %{} :Expr (:at 1651248474135) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |20)
                          |l $ %{} :Expr (:at 1651248474135) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text ||pointer)
                          |o $ %{} :Expr (:at 1651248474135) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |:font-weight)
                              |b $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text "|\"lighter")
                          |q $ %{} :Expr (:at 1651248474135) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |ui/font-fancy)
                          |s $ %{} :Expr (:at 1651248474135) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |:text-align)
                              |b $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |:right)
                          |t $ %{} :Expr (:at 1651248474135) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |:padding)
                              |b $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text "||0 16px")
                          |u $ %{} :Expr (:at 1651248474135) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1651248474135) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1651248474135) (:by |bjmr3HZle) (:text |20)
                  |h $ %{} :Expr (:at 1651248503181) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651248506706) (:by |bjmr3HZle) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1651248507051) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651248507421) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1651248508353) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248512608) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1651248512852) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248513193) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1651248513669) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1651248513993) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1651248522402) (:by |bjmr3HZle) (:text |97)
        |on-route $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |on-route)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |path-name)
              |v $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |fn)
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |e)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |dispatch!)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |dispatch!)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:router/nav)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |path-name)
        |render-entry $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |path)
                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |title)
                  |r $ %{} :Leaf (:at 1690724763222) (:by |bjmr3HZle) (:text |selected?)
              |v $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1651248453267) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651248456912) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1651248464246) (:by |bjmr3HZle) (:text |css-sidebar-entry)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1519834342733) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519834343042) (:by |root) (:text |if)
                              |f $ %{} :Leaf (:at 1690724760293) (:by |bjmr3HZle) (:text |selected?)
                              |r $ %{} :Expr (:at 1519834349427) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519834350312) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1519834351311) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519834845058) (:by |root) (:text |:background-color)
                                      |j $ %{} :Expr (:at 1519834846831) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519834848265) (:by |root) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1519834848726) (:by |root) (:text |0)
                                          |r $ %{} :Leaf (:at 1519834848948) (:by |root) (:text |0)
                                          |v $ %{} :Leaf (:at 1519834884087) (:by |root) (:text |50)
                                          |x $ %{} :Leaf (:at 1519834882664) (:by |root) (:text |0.1)
                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519834360126) (:by |root) (:text |:on-click)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |on-route)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |path)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506677173071) (:by |root) (:text |<>)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |title)
        |style-logo $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |style-logo)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:background-image)
                      |j $ %{} :Leaf (:at 1696270846250) (:by |bjmr3HZle) (:text "||url(https://cos-sh.tiye.me/cos-up/bb4c2755050318e864b56f59145d726e-SubstractRespo.png)")
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:width)
                      |j $ %{} :Leaf (:at 1520614417250) (:by |root) (:text |80)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:height)
                      |j $ %{} :Leaf (:at 1520614418906) (:by |root) (:text |80)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:background-size)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:cover)
                  |y $ %{} :Expr (:at 1519834564495) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519834569994) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1519834572167) (:by |root) (:text |:inline-block)
                  |yT $ %{} :Expr (:at 1519834664920) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519834669343) (:by |root) (:text |:vertical-align)
                      |j $ %{} :Leaf (:at 1519834674300) (:by |root) (:text |:text-bottom)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.sidebar)
            |r $ %{} :Expr (:at 1506675837748) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1506677135435) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540954181487) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1506677140188) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506677140385) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677143803) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1506677145301) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1506677146898) (:by |root) (:text |<>)
                |x $ %{} :Expr (:at 1519834441198) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519834446679) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1519834447274) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1519834447679) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1519834857269) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610553711462) (:by |bjmr3HZle) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1519834860275) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519834860528) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519834861435) (:by |root) (:text |hsl)
                |yT $ %{} :Expr (:at 1520614339997) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1520614361659) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1520614349010) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1520614350167) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1520614351004) (:by |root) (:text |=<)
                |z $ %{} :Expr (:at 1651248478114) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651248479314) (:by |bjmr3HZle) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1651248483081) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1651248483444) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651248485463) (:by |bjmr3HZle) (:text |defstyle)
    |respo-ui.comp.widgets-page $ %{} :FileEntry
      :defs $ {}
        |comp-tags-styles $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1711385347430) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1711385349050) (:by |bjmr3HZle) (:text |defcomp)
              |b $ %{} :Leaf (:at 1711385347430) (:by |bjmr3HZle) (:text |comp-tags-styles)
              |h $ %{} :Expr (:at 1711385347430) (:by |bjmr3HZle)
                :data $ {}
              |l $ %{} :Expr (:at 1711385350147) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1711385350640) (:by |bjmr3HZle) (:text |div)
                  |b $ %{} :Expr (:at 1711385351070) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385351427) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1711385422375) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711385424095) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Expr (:at 1711385476958) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1711385512546) (:by |bjmr3HZle) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1711385475246) (:by |bjmr3HZle) (:text |css/row-middle)
                              |b $ %{} :Leaf (:at 1711385496267) (:by |bjmr3HZle) (:text |css/gap8)
                  |h $ %{} :Expr (:at 1711385417165) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385419151) (:by |bjmr3HZle) (:text |span)
                      |b $ %{} :Expr (:at 1711385437868) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711385438636) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1711385439011) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711385446338) (:by |bjmr3HZle) (:text |:inner-text)
                              |b $ %{} :Leaf (:at 1711385460745) (:by |bjmr3HZle) (:text "|\"css/tag")
                          |h $ %{} :Expr (:at 1711385518660) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711385522390) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1711385524370) (:by |bjmr3HZle) (:text |css/tag)
                  |l $ %{} :Expr (:at 1711385417165) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385419151) (:by |bjmr3HZle) (:text |span)
                      |b $ %{} :Expr (:at 1711385437868) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711385438636) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1711385439011) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711385446338) (:by |bjmr3HZle) (:text |:inner-text)
                              |b $ %{} :Leaf (:at 1711385464676) (:by |bjmr3HZle) (:text "|\"css/tag-stroke")
                          |h $ %{} :Expr (:at 1711385687344) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711385687344) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1711385692732) (:by |bjmr3HZle) (:text |css/tag-stroke)
                  |o $ %{} :Expr (:at 1711385417165) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385419151) (:by |bjmr3HZle) (:text |span)
                      |b $ %{} :Expr (:at 1711385437868) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711385438636) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1711385439011) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711385446338) (:by |bjmr3HZle) (:text |:inner-text)
                              |b $ %{} :Leaf (:at 1711385470512) (:by |bjmr3HZle) (:text "|\"css/tag-outline")
                          |h $ %{} :Expr (:at 1711385828851) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711385830353) (:by |bjmr3HZle) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1711385833713) (:by |bjmr3HZle) (:text |css/tag-outline)
        |comp-widgets-page $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506677471430) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-widgets-page)
              |r $ %{} :Expr (:at 1506677468280) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506678676330) (:by |root) (:text |states)
              |v $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |D $ %{} :Expr (:at 1586624957162) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1586624960971) (:by |bjmr3HZle) (:text |cursor)
                          |j $ %{} :Expr (:at 1586624961192) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1586624962208) (:by |bjmr3HZle) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1586624962946) (:by |bjmr3HZle) (:text |states)
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:data)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |states)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506677521850) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Widgets)
                      |v $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506677528212) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1710345080072) (:by |bjmr3HZle) (:text "||link to external pages")
                              |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ui/text-label)
                          |v $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506678136126) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |nil)
                              |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |16)
                          |x $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651247337857) (:by |bjmr3HZle) (:text |a)
                              |j $ %{} :Expr (:at 1651247342211) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1651247342836) (:by |bjmr3HZle) (:text |{})
                                  |L $ %{} :Expr (:at 1651247345819) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651247348684) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1651247351309) (:by |bjmr3HZle) (:text |css/link)
                                  |T $ %{} :Expr (:at 1651247343353) (:by |bjmr3HZle)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1651247345292) (:by |bjmr3HZle) (:text |:inner-text)
                                      |T $ %{} :Leaf (:at 1710345629204) (:by |bjmr3HZle) (:text ||link)
                      |w $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506677528212) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1710345381683) (:by |bjmr3HZle) (:text "||slight link without underscore")
                              |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ui/text-label)
                          |v $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506678136126) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |nil)
                              |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |16)
                          |x $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651247337857) (:by |bjmr3HZle) (:text |a)
                              |j $ %{} :Expr (:at 1651247342211) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1651247342836) (:by |bjmr3HZle) (:text |{})
                                  |L $ %{} :Expr (:at 1651247345819) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651247348684) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1710345369110) (:by |bjmr3HZle) (:text |css/link-slight)
                                  |T $ %{} :Expr (:at 1651247343353) (:by |bjmr3HZle)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1651247345292) (:by |bjmr3HZle) (:text |:inner-text)
                                      |T $ %{} :Leaf (:at 1710345645506) (:by |bjmr3HZle) (:text ||link)
                      |x $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506678149796) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |16)
                      |y $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1671121293535) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671121294306) (:by |bjmr3HZle) (:text |:style)
                                  |b $ %{} :Expr (:at 1671121300020) (:by |bjmr3HZle)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1671121300879) (:by |bjmr3HZle) (:text |merge)
                                      |T $ %{} :Leaf (:at 1671121299279) (:by |bjmr3HZle) (:text |ui/row)
                                      |b $ %{} :Expr (:at 1671121301876) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1671121302185) (:by |bjmr3HZle) (:text |{})
                                          |b $ %{} :Expr (:at 1671121302537) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1671121303773) (:by |bjmr3HZle) (:text |:gap)
                                              |b $ %{} :Leaf (:at 1671121304648) (:by |bjmr3HZle) (:text |16)
                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |button)
                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                  |b $ %{} :Expr (:at 1651244996736) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651245000451) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1671118683705) (:by |bjmr3HZle) (:text |css/button-primary)
                              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506677543911) (:by |root) (:text |<>)
                                  |j $ %{} :Leaf (:at 1711385932142) (:by |bjmr3HZle) (:text ||css/button-primary)
                          |t $ %{} :Expr (:at 1671118674448) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671118674448) (:by |bjmr3HZle) (:text |button)
                              |b $ %{} :Expr (:at 1671118674448) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671118674448) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1671118674448) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1671118674448) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1671118674448) (:by |bjmr3HZle) (:text |css/button)
                              |h $ %{} :Expr (:at 1671118674448) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671118674448) (:by |bjmr3HZle) (:text |<>)
                                  |b $ %{} :Leaf (:at 1711385934246) (:by |bjmr3HZle) (:text ||css/button)
                          |x $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |button)
                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                  |b $ %{} :Expr (:at 1651245918216) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651245918216) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1651245918216) (:by |bjmr3HZle) (:text |css/button)
                                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1526748049052) (:by |root) (:text |:border-color)
                                              |j $ %{} :Expr (:at 1557076583948) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1557076583948) (:by |bjmr3HZle) (:text |hsl)
                                                  |j $ %{} :Leaf (:at 1557076583948) (:by |bjmr3HZle) (:text |6)
                                                  |r $ %{} :Leaf (:at 1557076583948) (:by |bjmr3HZle) (:text |100)
                                                  |v $ %{} :Leaf (:at 1557076583948) (:by |bjmr3HZle) (:text |60)
                                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1526748054302) (:by |root) (:text |:color)
                                              |j $ %{} :Expr (:at 1557076585703) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1557076585703) (:by |bjmr3HZle) (:text |hsl)
                                                  |j $ %{} :Leaf (:at 1557076585703) (:by |bjmr3HZle) (:text |6)
                                                  |r $ %{} :Leaf (:at 1557076585703) (:by |bjmr3HZle) (:text |100)
                                                  |v $ %{} :Leaf (:at 1557076585703) (:by |bjmr3HZle) (:text |60)
                              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506677550720) (:by |root) (:text |<>)
                                  |j $ %{} :Leaf (:at 1711385940722) (:by |bjmr3HZle) (:text ||css/button)
                          |z $ %{} :Expr (:at 1671121290199) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671121290199) (:by |bjmr3HZle) (:text |button)
                              |b $ %{} :Expr (:at 1671121290199) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671121290199) (:by |bjmr3HZle) (:text |{})
                                  |b $ %{} :Expr (:at 1671121290199) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1671121290199) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1671121321534) (:by |bjmr3HZle) (:text |css/button-danger)
                              |h $ %{} :Expr (:at 1671121290199) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671121290199) (:by |bjmr3HZle) (:text |<>)
                                  |b $ %{} :Leaf (:at 1711385937922) (:by |bjmr3HZle) (:text ||css/button-danger)
                      |yT $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506677558653) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |16)
                      |yj $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |input)
                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                  |b $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:placeholder)
                                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text "||Some short text")
                                  |f $ %{} :Expr (:at 1506677445343) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1506677446784) (:by |root) (:text |:value)
                                      |j $ %{} :Leaf (:at 1506677447682) (:by |root) (:text |state)
                                  |h $ %{} :Expr (:at 1651246020028) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651246023547) (:by |bjmr3HZle) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1651246025531) (:by |bjmr3HZle) (:text |css/input)
                                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508045993723) (:by |root) (:text |:on)
                                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:input)
                                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |fn)
                                                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |e)
                                                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |dispatch!)
                                                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1586624969617) (:by |bjmr3HZle) (:text |dispatch!)
                                                      |b $ %{} :Leaf (:at 1586624970997) (:by |bjmr3HZle) (:text |cursor)
                                                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:value)
                                                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |e)
                          |v $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506677565178) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |16)
                              |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |nil)
                          |x $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |button)
                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651246012518) (:by |bjmr3HZle) (:text |:class-name)
                                      |j $ %{} :Leaf (:at 1651246362176) (:by |bjmr3HZle) (:text |css/button)
                              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506677566960) (:by |root) (:text |<>)
                                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Add)
                          |y $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506677575290) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |16)
                              |r $ %{} :Leaf (:at 1506677573307) (:by |root) (:text |nil)
                          |yT $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506677577248) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||nothing)
                              |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ui/text-label)
                      |yr $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506677596536) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |16)
                      |yv $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |select)
                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651246518389) (:by |bjmr3HZle) (:text |:class-name)
                                      |j $ %{} :Leaf (:at 1651246472226) (:by |bjmr3HZle) (:text |css/select)
                              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |option)
                                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:selected)
                                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |true)
                                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Haskell)
                              |v $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |option)
                                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:selected)
                                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |true)
                                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Clojure)
                              |x $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |option)
                                  |j $ %{} :Expr (:at 1506677588360) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:selected)
                                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |false)
                                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||OCaml)
                      |yx $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506677619932) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |16)
                      |yy $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |textarea)
                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                  |b $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:placeholder)
                                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text "||Some long text")
                                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651246434859) (:by |bjmr3HZle) (:text |:class-name)
                                      |j $ %{} :Leaf (:at 1651246394629) (:by |bjmr3HZle) (:text |css/textarea)
                          |v $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506677621978) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |16)
                              |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |nil)
                          |x $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |button)
                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651246387022) (:by |bjmr3HZle) (:text |:class-name)
                                      |j $ %{} :Leaf (:at 1651246391391) (:by |bjmr3HZle) (:text |css/button)
                              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506677623995) (:by |root) (:text |<>)
                                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Add)
                      |yz $ %{} :Expr (:at 1711385356238) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711385357153) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1711385357489) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711385357787) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1711385358872) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1711385359830) (:by |bjmr3HZle) (:text |:style)
                                  |b $ %{} :Expr (:at 1711385360504) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1711385361177) (:by |bjmr3HZle) (:text |{})
                                      |b $ %{} :Expr (:at 1711385361532) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1711385365274) (:by |bjmr3HZle) (:text |:height)
                                          |b $ %{} :Leaf (:at 1711385365993) (:by |bjmr3HZle) (:text |1)
                                      |h $ %{} :Expr (:at 1711385366907) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1711385368024) (:by |bjmr3HZle) (:text |:width)
                                          |b $ %{} :Leaf (:at 1711385405225) (:by |bjmr3HZle) (:text "|\"50%")
                                      |l $ %{} :Expr (:at 1711385372411) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1711385377332) (:by |bjmr3HZle) (:text |:background-color)
                                          |b $ %{} :Expr (:at 1711385377600) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1711385377916) (:by |bjmr3HZle) (:text |hsl)
                                              |b $ %{} :Leaf (:at 1711385378245) (:by |bjmr3HZle) (:text |0)
                                              |h $ %{} :Leaf (:at 1711385378486) (:by |bjmr3HZle) (:text |0)
                                              |l $ %{} :Leaf (:at 1711385411008) (:by |bjmr3HZle) (:text |90)
                                      |o $ %{} :Expr (:at 1711385382552) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1711385383744) (:by |bjmr3HZle) (:text |:margin)
                                          |b $ %{} :Leaf (:at 1711385398923) (:by |bjmr3HZle) (:text "|\"48px 12px")
                      |z $ %{} :Expr (:at 1711385330626) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711385339186) (:by |bjmr3HZle) (:text |comp-tags-styles)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.widgets-page)
            |r $ %{} :Expr (:at 1506675837748) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1506677480730) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540954573122) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1506677486543) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506677486718) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677487993) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1506677489150) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1506677490308) (:by |root) (:text |input)
                        |x $ %{} :Leaf (:at 1506677491610) (:by |root) (:text |textarea)
                        |y $ %{} :Leaf (:at 1506677492568) (:by |root) (:text |button)
                        |yD $ %{} :Leaf (:at 1506678375355) (:by |root) (:text |span)
                        |yH $ %{} :Leaf (:at 1508046716474) (:by |root) (:text |select)
                        |yL $ %{} :Leaf (:at 1508046114127) (:by |root) (:text |option)
                        |yT $ %{} :Leaf (:at 1506677492922) (:by |root) (:text |a)
                        |yj $ %{} :Leaf (:at 1506677493659) (:by |root) (:text |<>)
                |v $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677513211) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516428675503) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ui)
                |xT $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1651244984444) (:by |bjmr3HZle) (:text |respo-ui.css)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1651244989316) (:by |bjmr3HZle) (:text |css)
                |y $ %{} :Expr (:at 1557076639445) (:by |bjmr3HZle)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610553717473) (:by |bjmr3HZle) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1557076642985) (:by |bjmr3HZle) (:text |:refer)
                    |v $ %{} :Expr (:at 1557076643206) (:by |bjmr3HZle)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1557076644174) (:by |bjmr3HZle) (:text |hsl)
    |respo-ui.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1555608057450) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1555608057450) (:by |bjmr3HZle) (:text |def)
              |j $ %{} :Leaf (:at 1555608057450) (:by |bjmr3HZle) (:text |dev?)
              |n $ %{} :Expr (:at 1678209997834) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1678210008740) (:by |bjmr3HZle) (:text |&=)
                  |b $ %{} :Leaf (:at 1678210000116) (:by |bjmr3HZle) (:text "|\"dev")
                  |h $ %{} :Expr (:at 1678210001530) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1678210002503) (:by |bjmr3HZle) (:text |get-env)
                      |b $ %{} :Leaf (:at 1678210004997) (:by |bjmr3HZle) (:text "|\"mode")
                      |h $ %{} :Leaf (:at 1678210021621) (:by |bjmr3HZle) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1555608057450) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1555608057450) (:by |bjmr3HZle) (:text |def)
              |j $ %{} :Leaf (:at 1555608057450) (:by |bjmr3HZle) (:text |site)
              |r $ %{} :Expr (:at 1555608057450) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1555608057450) (:by |bjmr3HZle) (:text |{})
                  |y $ %{} :Expr (:at 1555608057450) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1555608057450) (:by |bjmr3HZle) (:text |:title)
                      |j $ %{} :Leaf (:at 1555608746401) (:by |bjmr3HZle) (:text "|\"Respo UI")
                  |yT $ %{} :Expr (:at 1555608057450) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1555608057450) (:by |bjmr3HZle) (:text |:icon)
                      |j $ %{} :Leaf (:at 1555608750139) (:by |bjmr3HZle) (:text "|\"http://cdn.tiye.me/logo/respo.png")
                  |yj $ %{} :Expr (:at 1555608057450) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1555608057450) (:by |bjmr3HZle) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1555608751973) (:by |bjmr3HZle) (:text "|\"respo-ui")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1555608057450) (:by |bjmr3HZle)
          :data $ {}
            |T $ %{} :Leaf (:at 1555608057450) (:by |bjmr3HZle) (:text |ns)
            |j $ %{} :Leaf (:at 1555608057450) (:by |bjmr3HZle) (:text |respo-ui.config)
    |respo-ui.core $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |button)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:min-width)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||80px)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:line-height)
                      |j $ %{} :Leaf (:at 1645115807539) (:by |bjmr3HZle) (:text ||24px)
                  |t $ %{} :Expr (:at 1526747646503) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1526747652850) (:by |root) (:text |:border-radius)
                      |j $ %{} :Leaf (:at 1645115950973) (:by |bjmr3HZle) (:text "|\"4px")
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-size)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |14)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:text-align)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||center)
                  |yD $ %{} :Expr (:at 1526747777953) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1526747783694) (:by |root) (:text |:border)
                      |j $ %{} :Expr (:at 1526747784475) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526747785506) (:by |root) (:text |str)
                          |j $ %{} :Leaf (:at 1526747787925) (:by |root) (:text "|\"1px solid ")
                          |r $ %{} :Expr (:at 1671121083826) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671121083826) (:by |bjmr3HZle) (:text |hsl)
                              |b $ %{} :Leaf (:at 1671121083826) (:by |bjmr3HZle) (:text |220)
                              |h $ %{} :Leaf (:at 1671121083826) (:by |bjmr3HZle) (:text |100)
                              |l $ %{} :Leaf (:at 1671121083826) (:by |bjmr3HZle) (:text |76)
                  |yT $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:color)
                      |j $ %{} :Expr (:at 1671121085766) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1671121085766) (:by |bjmr3HZle) (:text |hsl)
                          |b $ %{} :Leaf (:at 1671121085766) (:by |bjmr3HZle) (:text |220)
                          |h $ %{} :Leaf (:at 1671121085766) (:by |bjmr3HZle) (:text |100)
                          |l $ %{} :Leaf (:at 1671121085766) (:by |bjmr3HZle) (:text |76)
                  |yj $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:cursor)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||pointer)
                  |yr $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||inline-block)
                  |yv $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:padding)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text "||0 8px")
                  |yy $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:outline)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:none)
                  |yyT $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:vertical-align)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:top)
                  |yyj $ %{} :Expr (:at 1534871032508) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1534871036254) (:by |bjmr3HZle) (:text |:background-color)
                      |j $ %{} :Leaf (:at 1534871037037) (:by |bjmr3HZle) (:text |:white)
                  |yyr $ %{} :Expr (:at 1641450735515) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1641450737639) (:by |bjmr3HZle) (:text |:user-select)
                      |j $ %{} :Leaf (:at 1641450738720) (:by |bjmr3HZle) (:text |:none)
                  |z $ %{} :Expr (:at 1671120969075) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1671120974237) (:by |bjmr3HZle) (:text |:transition-duration)
                      |b $ %{} :Leaf (:at 1671120976913) (:by |bjmr3HZle) (:text "|\"300ms")
        |button-danger $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1671121347402) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1671121347402) (:by |bjmr3HZle) (:text |def)
              |b $ %{} :Leaf (:at 1671121347402) (:by |bjmr3HZle) (:text |button-danger)
              |h $ %{} :Expr (:at 1671121357382) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1671121357382) (:by |bjmr3HZle) (:text |merge)
                  |b $ %{} :Leaf (:at 1671121357382) (:by |bjmr3HZle) (:text |button)
                  |h $ %{} :Expr (:at 1671121357382) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1671121357382) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1671121357382) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1671121357382) (:by |bjmr3HZle) (:text |:color)
                          |b $ %{} :Leaf (:at 1671121357382) (:by |bjmr3HZle) (:text |:white)
                      |h $ %{} :Expr (:at 1671121357382) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1671121357382) (:by |bjmr3HZle) (:text |:background-color)
                          |b $ %{} :Expr (:at 1671121372589) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671121372589) (:by |bjmr3HZle) (:text |hsl)
                              |b $ %{} :Leaf (:at 1671121372589) (:by |bjmr3HZle) (:text |6)
                              |h $ %{} :Leaf (:at 1671121372589) (:by |bjmr3HZle) (:text |100)
                              |l $ %{} :Leaf (:at 1671121372589) (:by |bjmr3HZle) (:text |60)
                      |l $ %{} :Expr (:at 1671121357382) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1671121357382) (:by |bjmr3HZle) (:text |:border-color)
                          |b $ %{} :Expr (:at 1671121373325) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671121373325) (:by |bjmr3HZle) (:text |hsl)
                              |b $ %{} :Leaf (:at 1671121373325) (:by |bjmr3HZle) (:text |6)
                              |h $ %{} :Leaf (:at 1671121373325) (:by |bjmr3HZle) (:text |100)
                              |l $ %{} :Leaf (:at 1671121373325) (:by |bjmr3HZle) (:text |60)
        |button-primary $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1671120716582) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1671120716582) (:by |bjmr3HZle) (:text |def)
              |b $ %{} :Leaf (:at 1671120716582) (:by |bjmr3HZle) (:text |button-primary)
              |l $ %{} :Expr (:at 1671120825459) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1671120828093) (:by |bjmr3HZle) (:text |merge)
                  |T $ %{} :Leaf (:at 1671120725340) (:by |bjmr3HZle) (:text |button)
                  |b $ %{} :Expr (:at 1671120828624) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1671120828941) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1671120829166) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1671120833078) (:by |bjmr3HZle) (:text |:color)
                          |b $ %{} :Leaf (:at 1671120834748) (:by |bjmr3HZle) (:text |:white)
                      |h $ %{} :Expr (:at 1671120837543) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1671120839687) (:by |bjmr3HZle) (:text |:background-color)
                          |b $ %{} :Expr (:at 1671120860136) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671120860136) (:by |bjmr3HZle) (:text |hsl)
                              |b $ %{} :Leaf (:at 1671120860136) (:by |bjmr3HZle) (:text |220)
                              |h $ %{} :Leaf (:at 1671120909058) (:by |bjmr3HZle) (:text |80)
                              |l $ %{} :Leaf (:at 1671120920396) (:by |bjmr3HZle) (:text |60)
                      |l $ %{} :Expr (:at 1671120841437) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1671120843430) (:by |bjmr3HZle) (:text |:border-color)
                          |b $ %{} :Expr (:at 1671120861990) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671120861990) (:by |bjmr3HZle) (:text |hsl)
                              |b $ %{} :Leaf (:at 1671120861990) (:by |bjmr3HZle) (:text |220)
                              |h $ %{} :Leaf (:at 1671120910274) (:by |bjmr3HZle) (:text |80)
                              |l $ %{} :Leaf (:at 1671120922265) (:by |bjmr3HZle) (:text |60)
        |card $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |card)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:padding)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||16px)
        |center $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |center)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||flex)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:flex-direction)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||column)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:justify-content)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||center)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:align-items)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||center)
        |column $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |column)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||flex)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:align-items)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||stretch)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:flex-direction)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||column)
        |column-dispersive $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1513318539348) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1513318544243) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1513318539348) (:by |root) (:text |column-dispersive)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||flex)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:align-items)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||center)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:justify-content)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||space-around)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:flex-direction)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||column)
        |column-evenly $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1590685723588) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1590685731987) (:by |bjmr3HZle) (:text |def)
              |j $ %{} :Leaf (:at 1590685723588) (:by |bjmr3HZle) (:text |column-evenly)
              |r $ %{} :Expr (:at 1590685731002) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1590685731002) (:by |bjmr3HZle) (:text |{})
                  |j $ %{} :Expr (:at 1590685731002) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1590685731002) (:by |bjmr3HZle) (:text |:display)
                      |j $ %{} :Leaf (:at 1590685731002) (:by |bjmr3HZle) (:text ||flex)
                  |r $ %{} :Expr (:at 1590685731002) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1590685731002) (:by |bjmr3HZle) (:text |:align-items)
                      |j $ %{} :Leaf (:at 1590685731002) (:by |bjmr3HZle) (:text ||center)
                  |v $ %{} :Expr (:at 1590685731002) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1590685731002) (:by |bjmr3HZle) (:text |:justify-content)
                      |j $ %{} :Leaf (:at 1590685739578) (:by |bjmr3HZle) (:text ||space-evenly)
                  |x $ %{} :Expr (:at 1590685731002) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1590685731002) (:by |bjmr3HZle) (:text |:flex-direction)
                      |j $ %{} :Leaf (:at 1590685731002) (:by |bjmr3HZle) (:text ||column)
        |column-parted $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1514261487262) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1514261499324) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1514261487262) (:by |root) (:text |column-parted)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1514303164740) (:by |root) (:text |:flex)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:align-items)
                      |j $ %{} :Leaf (:at 1514303174417) (:by |root) (:text |:stretch)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:justify-content)
                      |j $ %{} :Leaf (:at 1514303167183) (:by |root) (:text |:space-between)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:flex-direction)
                      |j $ %{} :Leaf (:at 1514303169675) (:by |root) (:text |:column)
        |default-fonts $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |default-fonts)
              |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text "||Hind,Verdana,'Hiragino Sans GB','WenQuanYi Micro Hei','Microsoft Yahei',sans-serif")
        |expand $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1555608078875) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1555608605616) (:by |bjmr3HZle) (:text |def)
              |j $ %{} :Leaf (:at 1555608078875) (:by |bjmr3HZle) (:text |expand)
              |r $ %{} :Expr (:at 1555608082406) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1555608082406) (:by |bjmr3HZle) (:text |{})
                  |j $ %{} :Expr (:at 1555608082406) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1555608082406) (:by |bjmr3HZle) (:text |:flex)
                      |j $ %{} :Leaf (:at 1555608082406) (:by |bjmr3HZle) (:text |1)
                  |r $ %{} :Expr (:at 1555608086252) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1555608087667) (:by |bjmr3HZle) (:text |:overflow)
                      |j $ %{} :Leaf (:at 1555608088453) (:by |bjmr3HZle) (:text |:auto)
        |flex $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |flex)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:flex)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |1)
        |font-code $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1516429369300) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1516429602614) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1516429369300) (:by |root) (:text |font-code)
              |r $ %{} :Leaf (:at 1583727181875) (:by |bjmr3HZle) (:text "||Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace")
        |font-fancy $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1516429352990) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1516429578596) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1516429352990) (:by |root) (:text |font-fancy)
              |r $ %{} :Leaf (:at 1516429595718) (:by |root) (:text "||Josefin Sans, Helvetica neue, Arial, sans-serif")
        |font-normal $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1516429434734) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1516429537898) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1516429539641) (:by |root) (:text |font-normal)
              |r $ %{} :Leaf (:at 1516429563157) (:by |root) (:text "||Hind, Helvatica, Arial, sans-serif")
        |fullscreen $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |fullscreen)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:position)
                      |j $ %{} :Leaf (:at 1534871017251) (:by |bjmr3HZle) (:text "|\"absolute")
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:left)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |0)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:top)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |0)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:width)
                      |j $ %{} :Leaf (:at 1534871019152) (:by |bjmr3HZle) (:text "|\"100%")
                  |y $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:height)
                      |j $ %{} :Leaf (:at 1534871020947) (:by |bjmr3HZle) (:text "|\"100%")
                  |yT $ %{} :Expr (:at 1534871010802) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1534871014006) (:by |bjmr3HZle) (:text |:overflow)
                      |j $ %{} :Leaf (:at 1534871015087) (:by |bjmr3HZle) (:text |:auto)
        |global $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |global)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:line-height)
                      |j $ %{} :Leaf (:at 1573058081484) (:by |bjmr3HZle) (:text "|\"2")
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-size)
                      |j $ %{} :Leaf (:at 1573058055695) (:by |bjmr3HZle) (:text "|\"14px")
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |default-fonts)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:color)
                      |j $ %{} :Expr (:at 1557076631725) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1557076631725) (:by |bjmr3HZle) (:text |hsl)
                          |j $ %{} :Leaf (:at 1557076631725) (:by |bjmr3HZle) (:text |0)
                          |r $ %{} :Leaf (:at 1557076631725) (:by |bjmr3HZle) (:text |0)
                          |v $ %{} :Leaf (:at 1557076631725) (:by |bjmr3HZle) (:text |20)
        |hsl $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1627236907181) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |defn)
              |j $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |hsl)
              |r $ %{} :Expr (:at 1627236907181) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |h)
                  |j $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |s)
                  |r $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |l)
                  |v $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |?)
                  |x $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |a)
              |v $ %{} :Expr (:at 1627236907181) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |if)
                  |j $ %{} :Expr (:at 1627236907181) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |some?)
                      |j $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |a)
                  |r $ %{} :Expr (:at 1627236907181) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |str)
                      |j $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text "|\"hsl(")
                      |r $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |h)
                      |v $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text "|\",")
                      |x $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |s)
                      |y $ %{} :Leaf (:at 1627238242468) (:by |bjmr3HZle) (:text "|\"%,")
                      |yT $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |l)
                      |yj $ %{} :Leaf (:at 1627238244604) (:by |bjmr3HZle) (:text "|\"%,")
                      |yr $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |a)
                      |yv $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text "|\")")
                  |v $ %{} :Expr (:at 1627236907181) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |str)
                      |j $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text "|\"hsl(")
                      |r $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |h)
                      |v $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text "|\",")
                      |x $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |s)
                      |y $ %{} :Leaf (:at 1627238248258) (:by |bjmr3HZle) (:text "|\"%,")
                      |yT $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |l)
                      |yj $ %{} :Leaf (:at 1627238246465) (:by |bjmr3HZle) (:text "|\"%)")
        |input $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |input)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |merge)
                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |global)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:border)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||none)
                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:outline)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||none)
                      |w $ %{} :Expr (:at 1526831195146) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526831196256) (:by |root) (:text |:border)
                          |j $ %{} :Expr (:at 1526831197768) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526831199011) (:by |root) (:text |str)
                              |j $ %{} :Leaf (:at 1526831202665) (:by |root) (:text "|\"1px solid ")
                              |r $ %{} :Expr (:at 1526831203743) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1526831210461) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1526831210978) (:by |root) (:text |0)
                                  |r $ %{} :Leaf (:at 1526831211201) (:by |root) (:text |0)
                                  |v $ %{} :Leaf (:at 1526831224804) (:by |root) (:text |80)
                      |wT $ %{} :Expr (:at 1526831228656) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526831233780) (:by |root) (:text |:border-radius)
                          |j $ %{} :Leaf (:at 1526831237609) (:by |root) (:text "|\"4px")
                      |x $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-size)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||14px)
                      |y $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:padding)
                          |j $ %{} :Leaf (:at 1645115825773) (:by |bjmr3HZle) (:text "||4px 8px")
                      |yT $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:min-width)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||120px)
                      |yj $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:line-height)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||16px)
                      |yr $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:height)
                          |j $ %{} :Leaf (:at 1645115855243) (:by |bjmr3HZle) (:text |28)
                      |yv $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-family)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |default-fonts)
                      |yx $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:vertical-align)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:top)
        |link $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |link)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:text-decoration)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:underline)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:height)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |24)
                  |y $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:line-height)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||24px)
                  |yT $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:margin)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |4)
                  |yr $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:inline-block)
                  |yv $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:cursor)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:pointer)
                  |yx $ %{} :Expr (:at 1641450743497) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1641450746153) (:by |bjmr3HZle) (:text |:user-select)
                      |j $ %{} :Leaf (:at 1641450747065) (:by |bjmr3HZle) (:text |:none)
                  |z $ %{} :Expr (:at 1651247377975) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651247377975) (:by |bjmr3HZle) (:text |:color)
                      |b $ %{} :Expr (:at 1651247377975) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651247377975) (:by |bjmr3HZle) (:text |hsl)
                          |b $ %{} :Leaf (:at 1651247377975) (:by |bjmr3HZle) (:text |200)
                          |h $ %{} :Leaf (:at 1651247377975) (:by |bjmr3HZle) (:text |100)
                          |l $ %{} :Leaf (:at 1651247377975) (:by |bjmr3HZle) (:text |76)
        |row $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |row)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||flex)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:align-items)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||stretch)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:flex-direction)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||row)
        |row-center $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |row-center)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||flex)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:align-items)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||center)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:justify-content)
                      |j $ %{} :Leaf (:at 1513318501523) (:by |root) (:text ||center)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:flex-direction)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||row)
        |row-dispersive $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1513318514526) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1513318519080) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1513318514526) (:by |root) (:text |row-dispersive)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||flex)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:align-items)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||center)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:justify-content)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||space-around)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:flex-direction)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||row)
        |row-evenly $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1590685689315) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1590685715526) (:by |bjmr3HZle) (:text |def)
              |j $ %{} :Leaf (:at 1590685689315) (:by |bjmr3HZle) (:text |row-evenly)
              |r $ %{} :Expr (:at 1590685693448) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1590685693448) (:by |bjmr3HZle) (:text |{})
                  |j $ %{} :Expr (:at 1590685693448) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1590685693448) (:by |bjmr3HZle) (:text |:display)
                      |j $ %{} :Leaf (:at 1590685693448) (:by |bjmr3HZle) (:text ||flex)
                  |r $ %{} :Expr (:at 1590685693448) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1590685693448) (:by |bjmr3HZle) (:text |:align-items)
                      |j $ %{} :Leaf (:at 1590685794506) (:by |bjmr3HZle) (:text ||center)
                  |v $ %{} :Expr (:at 1590685693448) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1590685693448) (:by |bjmr3HZle) (:text |:flex-direction)
                      |j $ %{} :Leaf (:at 1590685693448) (:by |bjmr3HZle) (:text ||row)
                  |x $ %{} :Expr (:at 1590685701295) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1590685706760) (:by |bjmr3HZle) (:text |:justify-content)
                      |j $ %{} :Leaf (:at 1590685710234) (:by |bjmr3HZle) (:text "|\"space-evenly")
        |row-middle $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539919964573) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1539920439537) (:by |bjmr3HZle) (:text |def)
              |j $ %{} :Leaf (:at 1539919964573) (:by |bjmr3HZle) (:text |row-middle)
              |r $ %{} :Expr (:at 1539919976502) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539919976502) (:by |bjmr3HZle) (:text |{})
                  |j $ %{} :Expr (:at 1539919976502) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539919976502) (:by |bjmr3HZle) (:text |:display)
                      |j $ %{} :Leaf (:at 1539919979097) (:by |bjmr3HZle) (:text |:flex)
                  |r $ %{} :Expr (:at 1539919976502) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539919976502) (:by |bjmr3HZle) (:text |:align-items)
                      |j $ %{} :Leaf (:at 1539919982472) (:by |bjmr3HZle) (:text |:center)
                  |v $ %{} :Expr (:at 1539919976502) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539919976502) (:by |bjmr3HZle) (:text |:justify-content)
                      |j $ %{} :Leaf (:at 1539919985629) (:by |bjmr3HZle) (:text |:flex-start)
                  |x $ %{} :Expr (:at 1539919976502) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539919976502) (:by |bjmr3HZle) (:text |:flex-direction)
                      |j $ %{} :Leaf (:at 1539919987430) (:by |bjmr3HZle) (:text |:row)
        |row-parted $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1513270580779) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1513270615529) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1513270580779) (:by |root) (:text |row-parted)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||flex)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:align-items)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||center)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:justify-content)
                      |j $ %{} :Leaf (:at 1513270620374) (:by |root) (:text ||space-between)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:flex-direction)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||row)
        |select $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |select)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:height)
                      |j $ %{} :Leaf (:at 1645115873780) (:by |bjmr3HZle) (:text |28)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:outline)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||none)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-size)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |14)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:min-width)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |120)
                  |y $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:border)
                      |j $ %{} :Expr (:at 1526831280646) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1526831282020) (:by |root) (:text |str)
                          |j $ %{} :Leaf (:at 1526831285357) (:by |root) (:text "|\"1px solid ")
                          |r $ %{} :Expr (:at 1526831286005) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526831287078) (:by |root) (:text |hsl)
                              |j $ %{} :Leaf (:at 1526831287379) (:by |root) (:text |0)
                              |r $ %{} :Leaf (:at 1526831287639) (:by |root) (:text |0)
                              |v $ %{} :Leaf (:at 1526831288131) (:by |root) (:text |80)
                  |y9 $ %{} :Expr (:at 1645115882508) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1645115884281) (:by |bjmr3HZle) (:text |:padding)
                      |b $ %{} :Leaf (:at 1645115894880) (:by |bjmr3HZle) (:text "|\"0 4px")
                  |yL $ %{} :Expr (:at 1526831291841) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1526831295849) (:by |root) (:text |:border-radius)
                      |j $ %{} :Leaf (:at 1526831297065) (:by |root) (:text "|\"4px")
                  |yj $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |default-fonts)
                  |yr $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:vertical-align)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:top)
                  |z $ %{} :Expr (:at 1645115900566) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1645115902385) (:by |bjmr3HZle) (:text |:cursor)
                      |b $ %{} :Leaf (:at 1645115904035) (:by |bjmr3HZle) (:text |:pointer)
        |tag $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1711384614307) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1711384645561) (:by |bjmr3HZle) (:text |def)
              |b $ %{} :Leaf (:at 1711384614307) (:by |bjmr3HZle) (:text |tag)
              |h $ %{} :Expr (:at 1711384614307) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1711384646762) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1711385541230) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385546149) (:by |bjmr3HZle) (:text |:background-color)
                      |b $ %{} :Expr (:at 1711385546400) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711385547497) (:by |bjmr3HZle) (:text |hsl)
                          |b $ %{} :Leaf (:at 1711385548529) (:by |bjmr3HZle) (:text |200)
                          |h $ %{} :Leaf (:at 1711385549914) (:by |bjmr3HZle) (:text |80)
                          |l $ %{} :Leaf (:at 1711385595928) (:by |bjmr3HZle) (:text |60)
                  |e $ %{} :Expr (:at 1711385598745) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385600686) (:by |bjmr3HZle) (:text |:line-height)
                      |b $ %{} :Leaf (:at 1711385674946) (:by |bjmr3HZle) (:text "|\"21px")
                  |f $ %{} :Expr (:at 1711385619816) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385623605) (:by |bjmr3HZle) (:text |:font-size)
                      |b $ %{} :Leaf (:at 1711385627781) (:by |bjmr3HZle) (:text |14)
                  |h $ %{} :Expr (:at 1711385563513) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385564769) (:by |bjmr3HZle) (:text |:padding)
                      |b $ %{} :Leaf (:at 1711385666852) (:by |bjmr3HZle) (:text "|\"0px 8px")
                  |l $ %{} :Expr (:at 1711385570854) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385574378) (:by |bjmr3HZle) (:text |:border-radius)
                      |b $ %{} :Leaf (:at 1711385582323) (:by |bjmr3HZle) (:text |4)
                  |o $ %{} :Expr (:at 1711385584665) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385585737) (:by |bjmr3HZle) (:text |:color)
                      |b $ %{} :Leaf (:at 1711385587843) (:by |bjmr3HZle) (:text |:white)
        |tag-outline $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1711384638574) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1711384662668) (:by |bjmr3HZle) (:text |def)
              |b $ %{} :Leaf (:at 1711384638574) (:by |bjmr3HZle) (:text |tag-outline)
              |h $ %{} :Expr (:at 1711385793096) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1711385793096) (:by |bjmr3HZle) (:text |merge)
                  |b $ %{} :Leaf (:at 1711385793096) (:by |bjmr3HZle) (:text |tag)
                  |h $ %{} :Expr (:at 1711385793096) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385793096) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1711385793096) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711385793096) (:by |bjmr3HZle) (:text |:background-color)
                          |b $ %{} :Leaf (:at 1711385820870) (:by |bjmr3HZle) (:text |:white)
                      |e $ %{} :Expr (:at 1711385799444) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711385805885) (:by |bjmr3HZle) (:text |:border)
                          |b $ %{} :Expr (:at 1711385806294) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711385807161) (:by |bjmr3HZle) (:text |str)
                              |b $ %{} :Leaf (:at 1711385809619) (:by |bjmr3HZle) (:text "|\"1px solid ")
                              |h $ %{} :Expr (:at 1711385813173) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1711385813173) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1711385813173) (:by |bjmr3HZle) (:text |200)
                                  |h $ %{} :Leaf (:at 1711385813173) (:by |bjmr3HZle) (:text |70)
                                  |l $ %{} :Leaf (:at 1711385815588) (:by |bjmr3HZle) (:text |80)
                      |h $ %{} :Expr (:at 1711385793096) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711385793096) (:by |bjmr3HZle) (:text |:color)
                          |b $ %{} :Expr (:at 1711385872012) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711385872012) (:by |bjmr3HZle) (:text |hsl)
                              |b $ %{} :Leaf (:at 1711385872012) (:by |bjmr3HZle) (:text |200)
                              |h $ %{} :Leaf (:at 1711385885924) (:by |bjmr3HZle) (:text |30)
                              |l $ %{} :Leaf (:at 1711385881404) (:by |bjmr3HZle) (:text |40)
        |tag-stroke $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1711384634745) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1711384652812) (:by |bjmr3HZle) (:text |def)
              |b $ %{} :Leaf (:at 1711384634745) (:by |bjmr3HZle) (:text |tag-stroke)
              |h $ %{} :Expr (:at 1711385722121) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1711385722927) (:by |bjmr3HZle) (:text |merge)
                  |L $ %{} :Leaf (:at 1711385725593) (:by |bjmr3HZle) (:text |tag)
                  |T $ %{} :Expr (:at 1711384634745) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711384654010) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1711385728716) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711385734215) (:by |bjmr3HZle) (:text |:background-color)
                          |b $ %{} :Expr (:at 1711385734445) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711385734774) (:by |bjmr3HZle) (:text |hsl)
                              |b $ %{} :Leaf (:at 1711385735937) (:by |bjmr3HZle) (:text |200)
                              |h $ %{} :Leaf (:at 1711385737724) (:by |bjmr3HZle) (:text |70)
                              |l $ %{} :Leaf (:at 1711385777419) (:by |bjmr3HZle) (:text |90)
                      |h $ %{} :Expr (:at 1711385741875) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711385742795) (:by |bjmr3HZle) (:text |:color)
                          |b $ %{} :Expr (:at 1711385743137) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711385743489) (:by |bjmr3HZle) (:text |hsl)
                              |b $ %{} :Leaf (:at 1711385758188) (:by |bjmr3HZle) (:text |200)
                              |h $ %{} :Leaf (:at 1711385766891) (:by |bjmr3HZle) (:text |20)
                              |l $ %{} :Leaf (:at 1711385769853) (:by |bjmr3HZle) (:text |40)
        |text-label $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |text-label)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:line-height)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||32px)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-size)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |14)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:color)
                      |j $ %{} :Expr (:at 1557076527164) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1557076527164) (:by |bjmr3HZle) (:text |hsl)
                          |j $ %{} :Leaf (:at 1557076527164) (:by |bjmr3HZle) (:text |0)
                          |r $ %{} :Leaf (:at 1557076527164) (:by |bjmr3HZle) (:text |0)
                          |v $ %{} :Leaf (:at 1557076527164) (:by |bjmr3HZle) (:text |20)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:inline-block)
                  |y $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:vertical-align)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:top)
        |textarea $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |textarea)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:outline)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:none)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:border)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:none)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-size)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |14)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |default-fonts)
                  |y $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1526831253118) (:by |root) (:text |:border)
                      |j $ %{} :Expr (:at 1526831253650) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1526831255055) (:by |root) (:text |str)
                          |L $ %{} :Leaf (:at 1526831259172) (:by |root) (:text "|\"1px solid ")
                          |T $ %{} :Expr (:at 1526831260447) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1526831261302) (:by |root) (:text |hsl)
                              |j $ %{} :Leaf (:at 1526831261895) (:by |root) (:text |0)
                              |r $ %{} :Leaf (:at 1526831262138) (:by |root) (:text |0)
                              |v $ %{} :Leaf (:at 1526831262580) (:by |root) (:text |80)
                  |yD $ %{} :Expr (:at 1526831264297) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1526831268223) (:by |root) (:text |:border-radius)
                      |j $ %{} :Leaf (:at 1526831270155) (:by |root) (:text "|\"4px")
                  |yT $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:padding)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |8)
                  |yj $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:min-width)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |240)
                  |yr $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:vertical-align)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:top)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.core)
            |r $ %{} :Expr (:at 1506675837748) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:require)
    |respo-ui.css $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651244921268) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |button)
              |r $ %{} :Expr (:at 1651244922822) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651244923388) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651244925079) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651244927802) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247519631) (:by |bjmr3HZle) (:text |ui/button)
                  |b $ %{} :Expr (:at 1651245178396) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651245203375) (:by |bjmr3HZle) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1651245186123) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651245187019) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1651245187394) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651245190775) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1651245191076) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651245191416) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1651245192028) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1651245192361) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1651245213701) (:by |bjmr3HZle) (:text |98)
                  |h $ %{} :Expr (:at 1651245178396) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651245938242) (:by |bjmr3HZle) (:text "|\"$0:active")
                      |b $ %{} :Expr (:at 1651245186123) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651245187019) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1651245187394) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651245943902) (:by |bjmr3HZle) (:text |:transform)
                              |b $ %{} :Leaf (:at 1671120999255) (:by |bjmr3HZle) (:text "|\"scale(1.02)")
                          |h $ %{} :Expr (:at 1651245962172) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651245966589) (:by |bjmr3HZle) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1651245968786) (:by |bjmr3HZle) (:text "|\"0ms")
        |button-danger $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1671121331987) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1671121338213) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1671121331987) (:by |bjmr3HZle) (:text |button-danger)
              |h $ %{} :Expr (:at 1671121333791) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1671121333791) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text "|\"$0")
                      |b $ %{} :Leaf (:at 1671121345705) (:by |bjmr3HZle) (:text |ui/button-danger)
                  |h $ %{} :Expr (:at 1671121333791) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1671121333791) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1671121333791) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1671121378630) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671121378630) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1671121378630) (:by |bjmr3HZle) (:text |6)
                                  |h $ %{} :Leaf (:at 1671121378630) (:by |bjmr3HZle) (:text |100)
                                  |l $ %{} :Leaf (:at 1671121380794) (:by |bjmr3HZle) (:text |64)
                          |h $ %{} :Expr (:at 1671121333791) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text |:border-color)
                              |b $ %{} :Expr (:at 1671121379214) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671121379214) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1671121379214) (:by |bjmr3HZle) (:text |6)
                                  |h $ %{} :Leaf (:at 1671121379214) (:by |bjmr3HZle) (:text |100)
                                  |l $ %{} :Leaf (:at 1671121382321) (:by |bjmr3HZle) (:text |64)
                  |l $ %{} :Expr (:at 1671121333791) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text "|\"$0:active")
                      |b $ %{} :Expr (:at 1671121333791) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1671121333791) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text |:transform)
                              |b $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text "|\"scale(1.02)")
                          |h $ %{} :Expr (:at 1671121333791) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text "|\"0ms")
                          |l $ %{} :Expr (:at 1671121333791) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1671121384599) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671121384599) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1671121384599) (:by |bjmr3HZle) (:text |6)
                                  |h $ %{} :Leaf (:at 1671121384599) (:by |bjmr3HZle) (:text |100)
                                  |l $ %{} :Leaf (:at 1671121386049) (:by |bjmr3HZle) (:text |68)
                          |o $ %{} :Expr (:at 1671121333791) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671121333791) (:by |bjmr3HZle) (:text |:border-color)
                              |b $ %{} :Expr (:at 1671121387596) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671121387596) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1671121387596) (:by |bjmr3HZle) (:text |6)
                                  |h $ %{} :Leaf (:at 1671121387596) (:by |bjmr3HZle) (:text |100)
                                  |l $ %{} :Leaf (:at 1671121389197) (:by |bjmr3HZle) (:text |68)
        |button-primary $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1671120702047) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1671120706789) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1671120702047) (:by |bjmr3HZle) (:text |button-primary)
              |h $ %{} :Expr (:at 1671120703655) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1671120703655) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1671120703655) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1671120703655) (:by |bjmr3HZle) (:text "|\"$0")
                      |b $ %{} :Leaf (:at 1671120715608) (:by |bjmr3HZle) (:text |ui/button-primary)
                  |h $ %{} :Expr (:at 1671120703655) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1671120703655) (:by |bjmr3HZle) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1671120703655) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1671120703655) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1671120703655) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671120703655) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1671120933084) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671120933084) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1671120933084) (:by |bjmr3HZle) (:text |220)
                                  |h $ %{} :Leaf (:at 1671120933084) (:by |bjmr3HZle) (:text |80)
                                  |l $ %{} :Leaf (:at 1671121135691) (:by |bjmr3HZle) (:text |64)
                          |h $ %{} :Expr (:at 1671120939906) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671120942432) (:by |bjmr3HZle) (:text |:border-color)
                              |b $ %{} :Expr (:at 1671120942850) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671120942850) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1671120942850) (:by |bjmr3HZle) (:text |220)
                                  |h $ %{} :Leaf (:at 1671120942850) (:by |bjmr3HZle) (:text |80)
                                  |l $ %{} :Leaf (:at 1671121137098) (:by |bjmr3HZle) (:text |64)
                  |l $ %{} :Expr (:at 1671120703655) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1671120703655) (:by |bjmr3HZle) (:text "|\"$0:active")
                      |b $ %{} :Expr (:at 1671120703655) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1671120703655) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1671120703655) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671120703655) (:by |bjmr3HZle) (:text |:transform)
                              |b $ %{} :Leaf (:at 1671120991870) (:by |bjmr3HZle) (:text "|\"scale(1.02)")
                          |h $ %{} :Expr (:at 1671120703655) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671120703655) (:by |bjmr3HZle) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1671120703655) (:by |bjmr3HZle) (:text "|\"0ms")
                          |l $ %{} :Expr (:at 1671121139860) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671121139860) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1671121139860) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671121139860) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1671121139860) (:by |bjmr3HZle) (:text |220)
                                  |h $ %{} :Leaf (:at 1671121139860) (:by |bjmr3HZle) (:text |80)
                                  |l $ %{} :Leaf (:at 1671121142583) (:by |bjmr3HZle) (:text |68)
                          |o $ %{} :Expr (:at 1671121146713) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1671121146713) (:by |bjmr3HZle) (:text |:border-color)
                              |b $ %{} :Expr (:at 1671121146713) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1671121146713) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1671121146713) (:by |bjmr3HZle) (:text |220)
                                  |h $ %{} :Leaf (:at 1671121146713) (:by |bjmr3HZle) (:text |80)
                                  |l $ %{} :Leaf (:at 1671121201998) (:by |bjmr3HZle) (:text |68)
        |card $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651247571272) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |card)
              |r $ %{} :Expr (:at 1651247572193) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651247572776) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651247573164) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651247574542) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||16px)
        |center $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246879524) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |center)
              |r $ %{} :Expr (:at 1651246880341) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246880823) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246881291) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246884026) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247104746) (:by |bjmr3HZle) (:text |ui/center)
        |column $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246933466) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |column)
              |r $ %{} :Expr (:at 1651246934267) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246934784) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246935225) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246937042) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247067083) (:by |bjmr3HZle) (:text |ui/column)
        |column-dispersive $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1513318539348) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246983285) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1513318539348) (:by |root) (:text |column-dispersive)
              |r $ %{} :Expr (:at 1651246984256) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246984776) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246985346) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246987016) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247038964) (:by |bjmr3HZle) (:text |ui/column-dispersive)
        |column-evenly $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1590685723588) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1651247003141) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1590685723588) (:by |bjmr3HZle) (:text |column-evenly)
              |r $ %{} :Expr (:at 1651247004794) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651247005411) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651247005828) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651247007811) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247018374) (:by |bjmr3HZle) (:text |ui/column-evenly)
        |column-parted $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1514261487262) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246961700) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1514261487262) (:by |root) (:text |column-parted)
              |r $ %{} :Expr (:at 1651246962802) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246963217) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246963638) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246964931) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247052455) (:by |bjmr3HZle) (:text |ui/column-parted)
        |expand $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1555608078875) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1651247147249) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1555608078875) (:by |bjmr3HZle) (:text |expand)
              |r $ %{} :Expr (:at 1651247148227) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651247148840) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651247149441) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651247151899) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247156051) (:by |bjmr3HZle) (:text |ui/expand)
        |flex $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651247536110) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |flex)
              |r $ %{} :Expr (:at 1651247536799) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651247537323) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651247537820) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651247539215) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:flex)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |1)
        |font-code $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1516429369300) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1657793079686) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1516429369300) (:by |root) (:text |font-code)
              |r $ %{} :Expr (:at 1657793080577) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657793081297) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1657793083000) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1657793084705) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1657793367955) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1657793368582) (:by |bjmr3HZle) (:text |{})
                          |T $ %{} :Expr (:at 1657793085641) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1657793087664) (:by |bjmr3HZle) (:text |:font-family)
                              |T $ %{} :Leaf (:at 1583727181875) (:by |bjmr3HZle) (:text "||Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace")
        |font-code! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1691559106958) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1691559113989) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1691559106958) (:by |bjmr3HZle) (:text |font-code!)
              |h $ %{} :Expr (:at 1691559118192) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1691559118192) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1691559118192) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1691559118192) (:by |bjmr3HZle) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1691559118192) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1691559118192) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1691559118192) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691559118192) (:by |bjmr3HZle) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1691559124066) (:by |bjmr3HZle) (:text "||Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace !important")
        |font-fancy $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1516429352990) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1657793099085) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1516429352990) (:by |root) (:text |font-fancy)
              |r $ %{} :Expr (:at 1657793099826) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657793100612) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1657793101410) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1657793105076) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1657793379577) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1657793380233) (:by |bjmr3HZle) (:text |{})
                          |T $ %{} :Expr (:at 1657793380848) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1657793384010) (:by |bjmr3HZle) (:text |:font-family)
                              |T $ %{} :Leaf (:at 1516429595718) (:by |root) (:text "||Josefin Sans, Helvetica neue, Arial, sans-serif")
        |font-fancy! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1691559139332) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1691559139332) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1691559141155) (:by |bjmr3HZle) (:text |font-fancy!)
              |h $ %{} :Expr (:at 1691559139332) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1691559139332) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1691559139332) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1691559175024) (:by |bjmr3HZle) (:text "|\"&")
                      |b $ %{} :Expr (:at 1691559139332) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1691559139332) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1691559139332) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691559139332) (:by |bjmr3HZle) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1691559145863) (:by |bjmr3HZle) (:text "||Josefin Sans, Helvetica neue, Arial, sans-serif !important")
        |font-normal $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1516429434734) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1657793110421) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1516429539641) (:by |root) (:text |font-normal)
              |r $ %{} :Expr (:at 1657793111114) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657793112767) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1657793113209) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1691559172274) (:by |bjmr3HZle) (:text "|\"&")
                      |T $ %{} :Expr (:at 1657793394406) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1657793395827) (:by |bjmr3HZle) (:text |{})
                          |T $ %{} :Expr (:at 1657793396337) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1657793399920) (:by |bjmr3HZle) (:text |:font-family)
                              |T $ %{} :Leaf (:at 1516429563157) (:by |root) (:text "||Hind, Helvatica, Arial, sans-serif")
        |font-normal! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1691559163934) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1691559163934) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1691559165948) (:by |bjmr3HZle) (:text |font-normal!)
              |h $ %{} :Expr (:at 1691559163934) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1691559163934) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1691559163934) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1691559169433) (:by |bjmr3HZle) (:text "|\"&")
                      |b $ %{} :Expr (:at 1691559163934) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1691559163934) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1691559163934) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691559163934) (:by |bjmr3HZle) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1691559163934) (:by |bjmr3HZle) (:text "||Hind, Helvatica, Arial, sans-serif")
        |fullscreen $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246598235) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |fullscreen)
              |r $ %{} :Expr (:at 1651246599214) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246599663) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246600601) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246602062) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:position)
                              |j $ %{} :Leaf (:at 1534871017251) (:by |bjmr3HZle) (:text "|\"absolute")
                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:left)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |0)
                          |v $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:top)
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |0)
                          |x $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:width)
                              |j $ %{} :Leaf (:at 1534871019152) (:by |bjmr3HZle) (:text "|\"100%")
                          |y $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:height)
                              |j $ %{} :Leaf (:at 1534871020947) (:by |bjmr3HZle) (:text "|\"100%")
                          |yT $ %{} :Expr (:at 1534871010802) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1534871014006) (:by |bjmr3HZle) (:text |:overflow)
                              |j $ %{} :Leaf (:at 1534871015087) (:by |bjmr3HZle) (:text |:auto)
        |gap16 $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1695747239493) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1695747239493) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1695747241331) (:by |bjmr3HZle) (:text |gap16)
              |h $ %{} :Expr (:at 1695747239493) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695747239493) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1695747239493) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695747239493) (:by |bjmr3HZle) (:text "|\"&")
                      |b $ %{} :Expr (:at 1695747239493) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747239493) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1695747239493) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747239493) (:by |bjmr3HZle) (:text |:gap)
                              |b $ %{} :Leaf (:at 1695747243258) (:by |bjmr3HZle) (:text |16)
        |gap8 $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1695747194903) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1695747197925) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1695747194903) (:by |bjmr3HZle) (:text |gap8)
              |h $ %{} :Expr (:at 1695747194903) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695747199206) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1695747199593) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695747201434) (:by |bjmr3HZle) (:text "|\"&")
                      |b $ %{} :Expr (:at 1695747201875) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747202156) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1695747202441) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747203911) (:by |bjmr3HZle) (:text |:gap)
                              |b $ %{} :Leaf (:at 1695747204198) (:by |bjmr3HZle) (:text |8)
        |global $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246552701) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |global)
              |r $ %{} :Expr (:at 1651246553747) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246555035) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246555864) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246557939) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:line-height)
                              |j $ %{} :Leaf (:at 1573058081484) (:by |bjmr3HZle) (:text "|\"2")
                          |r $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1573058055695) (:by |bjmr3HZle) (:text "|\"14px")
                          |v $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:font-family)
                              |j $ %{} :Leaf (:at 1657793171323) (:by |bjmr3HZle) (:text |ui/default-fonts)
                          |x $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:color)
                              |j $ %{} :Expr (:at 1557076631725) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1557076631725) (:by |bjmr3HZle) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1557076631725) (:by |bjmr3HZle) (:text |0)
                                  |r $ %{} :Leaf (:at 1557076631725) (:by |bjmr3HZle) (:text |0)
                                  |v $ %{} :Leaf (:at 1557076631725) (:by |bjmr3HZle) (:text |20)
        |hsl $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1627236907181) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |defn)
              |j $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |hsl)
              |r $ %{} :Expr (:at 1627236907181) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |h)
                  |j $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |s)
                  |r $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |l)
                  |v $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |?)
                  |x $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |a)
              |v $ %{} :Expr (:at 1627236907181) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |if)
                  |j $ %{} :Expr (:at 1627236907181) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |some?)
                      |j $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |a)
                  |r $ %{} :Expr (:at 1627236907181) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |str)
                      |j $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text "|\"hsl(")
                      |r $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |h)
                      |v $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text "|\",")
                      |x $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |s)
                      |y $ %{} :Leaf (:at 1627238242468) (:by |bjmr3HZle) (:text "|\"%,")
                      |yT $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |l)
                      |yj $ %{} :Leaf (:at 1627238244604) (:by |bjmr3HZle) (:text "|\"%,")
                      |yr $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |a)
                      |yv $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text "|\")")
                  |v $ %{} :Expr (:at 1627236907181) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |str)
                      |j $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text "|\"hsl(")
                      |r $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |h)
                      |v $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text "|\",")
                      |x $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |s)
                      |y $ %{} :Leaf (:at 1627238248258) (:by |bjmr3HZle) (:text "|\"%,")
                      |yT $ %{} :Leaf (:at 1627236907181) (:by |bjmr3HZle) (:text |l)
                      |yj $ %{} :Leaf (:at 1627238246465) (:by |bjmr3HZle) (:text "|\"%)")
        |input $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246222239) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |input)
              |r $ %{} :Expr (:at 1651246232070) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246232660) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246233845) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246236778) (:by |bjmr3HZle) (:text "|\"$0")
                      |T $ %{} :Leaf (:at 1651247486724) (:by |bjmr3HZle) (:text |ui/input)
                  |b $ %{} :Expr (:at 1651246268911) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651246274400) (:by |bjmr3HZle) (:text "|\"$0:focus")
                      |b $ %{} :Expr (:at 1651246275191) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651246275502) (:by |bjmr3HZle) (:text |{})
                          |X $ %{} :Expr (:at 1651246308808) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651246308808) (:by |bjmr3HZle) (:text |:border)
                              |b $ %{} :Expr (:at 1651246308808) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651246308808) (:by |bjmr3HZle) (:text |str)
                                  |b $ %{} :Leaf (:at 1651246308808) (:by |bjmr3HZle) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1651246308808) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651246308808) (:by |bjmr3HZle) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651246311143) (:by |bjmr3HZle) (:text |200)
                                      |h $ %{} :Leaf (:at 1651246312355) (:by |bjmr3HZle) (:text |50)
                                      |l $ %{} :Leaf (:at 1651246348433) (:by |bjmr3HZle) (:text |75)
                          |b $ %{} :Expr (:at 1651246275827) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651246279125) (:by |bjmr3HZle) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1651246282776) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651246283303) (:by |bjmr3HZle) (:text |str)
                                  |b $ %{} :Leaf (:at 1651246288631) (:by |bjmr3HZle) (:text "|\"0 0 4px ")
                                  |h $ %{} :Expr (:at 1651246289530) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651246289959) (:by |bjmr3HZle) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651246291563) (:by |bjmr3HZle) (:text |200)
                                      |h $ %{} :Leaf (:at 1651246292971) (:by |bjmr3HZle) (:text |70)
                                      |l $ %{} :Leaf (:at 1651246293946) (:by |bjmr3HZle) (:text |50)
                                      |o $ %{} :Leaf (:at 1651246299881) (:by |bjmr3HZle) (:text |0.2)
        |link $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651247284950) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |link)
              |r $ %{} :Expr (:at 1651247287376) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651247288711) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651247289329) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651247290940) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247296082) (:by |bjmr3HZle) (:text |ui/link)
                  |b $ %{} :Expr (:at 1651247289329) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651247362161) (:by |bjmr3HZle) (:text "|\"$0:hover")
                      |P $ %{} :Expr (:at 1651247363583) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651247364528) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1651247381376) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651247381376) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1651247381376) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651247381376) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1651247381376) (:by |bjmr3HZle) (:text |200)
                                  |h $ %{} :Leaf (:at 1651247381376) (:by |bjmr3HZle) (:text |100)
                                  |l $ %{} :Leaf (:at 1651247412925) (:by |bjmr3HZle) (:text |56)
                  |h $ %{} :Expr (:at 1651247289329) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651247402910) (:by |bjmr3HZle) (:text "|\"$0:active")
                      |P $ %{} :Expr (:at 1651247363583) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651247364528) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1651247381376) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651247381376) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1651247381376) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651247381376) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1651247381376) (:by |bjmr3HZle) (:text |200)
                                  |h $ %{} :Leaf (:at 1651247381376) (:by |bjmr3HZle) (:text |100)
                                  |l $ %{} :Leaf (:at 1651247404477) (:by |bjmr3HZle) (:text |40)
                          |h $ %{} :Expr (:at 1651247419887) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651247423851) (:by |bjmr3HZle) (:text |:transform)
                              |b $ %{} :Leaf (:at 1651247427556) (:by |bjmr3HZle) (:text "|\"scale(1.04)")
        |link-slight $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1710303992310) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1710303997559) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1710345364422) (:by |bjmr3HZle) (:text |link-slight)
              |h $ %{} :Expr (:at 1710303999754) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1710303999754) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1710304001392) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1710304003412) (:by |bjmr3HZle) (:text |merge)
                          |T $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |ui/link)
                          |b $ %{} :Expr (:at 1710304004248) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710304004582) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1710304004788) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1710304016438) (:by |bjmr3HZle) (:text |:text-decoration)
                                  |b $ %{} :Leaf (:at 1710304007050) (:by |bjmr3HZle) (:text |:none)
                  |h $ %{} :Expr (:at 1710303999754) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text "|\"$0:hover")
                      |b $ %{} :Expr (:at 1710303999754) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1710303999754) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1710303999754) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |200)
                                  |h $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |100)
                                  |l $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |56)
                  |l $ %{} :Expr (:at 1710303999754) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text "|\"$0:active")
                      |b $ %{} :Expr (:at 1710303999754) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1710303999754) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |:color)
                              |b $ %{} :Expr (:at 1710303999754) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |200)
                                  |h $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |100)
                                  |l $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |40)
                          |h $ %{} :Expr (:at 1710303999754) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text |:transform)
                              |b $ %{} :Leaf (:at 1710303999754) (:by |bjmr3HZle) (:text "|\"scale(1.04)")
        |preset $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1701534712926) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1701534715182) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1701534712926) (:by |bjmr3HZle) (:text |preset)
              |h $ %{} :Expr (:at 1701534712926) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1701534716838) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1701534717200) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1701534719836) (:by |bjmr3HZle) (:text "|\"body")
                      |b $ %{} :Expr (:at 1701534721048) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1701534720393) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1701534723652) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1701534723049) (:by |bjmr3HZle) (:text |:margin)
                              |b $ %{} :Leaf (:at 1701534723930) (:by |bjmr3HZle) (:text |0)
                          |e $ %{} :Expr (:at 1701534734225) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1701534734691) (:by |bjmr3HZle) (:text |:overscroll-behavior-x)
                              |b $ %{} :Leaf (:at 1701534793523) (:by |bjmr3HZle) (:text |:none)
                          |h $ %{} :Expr (:at 1701534728349) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1701534728943) (:by |bjmr3HZle) (:text |:overscroll-behavior-y)
                              |b $ %{} :Leaf (:at 1701534791081) (:by |bjmr3HZle) (:text |:none)
                  |h $ %{} :Expr (:at 1701534741596) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1701534744465) (:by |bjmr3HZle) (:text "|\"body *")
                      |b $ %{} :Expr (:at 1701534745191) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1701534745545) (:by |bjmr3HZle) (:text |{})
                          |h $ %{} :Expr (:at 1701534754415) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1701534755034) (:by |bjmr3HZle) (:text |:box-sizing)
                              |b $ %{} :Leaf (:at 1701534760933) (:by |bjmr3HZle) (:text |:border-box)
                  |l $ %{} :Expr (:at 1701534882501) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1701534883408) (:by |bjmr3HZle) (:text "|\"::-webkit-scrollbar")
                      |b $ %{} :Expr (:at 1701534886465) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1701534886786) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1701534886987) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1701534887839) (:by |bjmr3HZle) (:text |:width)
                              |b $ %{} :Leaf (:at 1701534888653) (:by |bjmr3HZle) (:text |4)
                          |h $ %{} :Expr (:at 1701534889322) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1701534891084) (:by |bjmr3HZle) (:text |:height)
                              |b $ %{} :Leaf (:at 1701534891953) (:by |bjmr3HZle) (:text |4)
                  |o $ %{} :Expr (:at 1701534898389) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1701534899380) (:by |bjmr3HZle) (:text "|\"::-webkit-scrollbar-track")
                      |b $ %{} :Expr (:at 1701534934379) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1701534934934) (:by |bjmr3HZle) (:text |{})
                          |T $ %{} :Expr (:at 1701534901799) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1701534905489) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1701534907716) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1701534909016) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1701534910077) (:by |bjmr3HZle) (:text |0)
                                  |h $ %{} :Leaf (:at 1701534910308) (:by |bjmr3HZle) (:text |0)
                                  |l $ %{} :Leaf (:at 1701534911801) (:by |bjmr3HZle) (:text |100)
                  |q $ %{} :Expr (:at 1701535017458) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1701535022230) (:by |bjmr3HZle) (:text "|\"::-webkit-scrollbar-thumb")
                      |b $ %{} :Expr (:at 1701535022972) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1701535023301) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1701535023557) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1701535025417) (:by |bjmr3HZle) (:text |:background-color)
                              |b $ %{} :Expr (:at 1701535030134) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1701535031144) (:by |bjmr3HZle) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1701535034251) (:by |bjmr3HZle) (:text |180)
                                  |h $ %{} :Leaf (:at 1701535037159) (:by |bjmr3HZle) (:text |40)
                                  |l $ %{} :Leaf (:at 1701535038274) (:by |bjmr3HZle) (:text |76)
                                  |o $ %{} :Leaf (:at 1701535039448) (:by |bjmr3HZle) (:text |0.8)
                  |s $ %{} :Expr (:at 1701535017458) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1701535047854) (:by |bjmr3HZle) (:text "|\"::-webkit-scrollbar-corner")
                      |b $ %{} :Expr (:at 1701535064158) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1701535065759) (:by |bjmr3HZle) (:text |{})
                          |T $ %{} :Expr (:at 1701535066874) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1701535069064) (:by |bjmr3HZle) (:text |:background-color)
                              |T $ %{} :Leaf (:at 1701535064987) (:by |bjmr3HZle) (:text |:transparent)
                  |t $ %{} :Expr (:at 1701535017458) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1701535060878) (:by |bjmr3HZle) (:text "|\"::-webkit-resizer")
                      |b $ %{} :Expr (:at 1701535070017) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1701535071535) (:by |bjmr3HZle) (:text |{})
                          |T $ %{} :Expr (:at 1701535072577) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1701535081182) (:by |bjmr3HZle) (:text |:background-color)
                              |T $ %{} :Leaf (:at 1701535052906) (:by |bjmr3HZle) (:text |:transparent)
        |row $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246624892) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |row)
              |r $ %{} :Expr (:at 1651246625678) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246626265) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246627201) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246629319) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247076587) (:by |bjmr3HZle) (:text |ui/row)
        |row-center $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246894089) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |row-center)
              |r $ %{} :Expr (:at 1651246896601) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246897033) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246897770) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246899438) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247097173) (:by |bjmr3HZle) (:text |ui/row-center)
        |row-dispersive $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1513318514526) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246973743) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1513318514526) (:by |root) (:text |row-dispersive)
              |r $ %{} :Expr (:at 1651246974680) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246975087) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246976333) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246977799) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247045469) (:by |bjmr3HZle) (:text |ui/row-dispersive)
        |row-evenly $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1590685689315) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246994082) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1590685689315) (:by |bjmr3HZle) (:text |row-evenly)
              |r $ %{} :Expr (:at 1651246994873) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246995309) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246995792) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246997080) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247028964) (:by |bjmr3HZle) (:text |ui/row-evenly)
        |row-middle $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539919964573) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246907813) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1539919964573) (:by |bjmr3HZle) (:text |row-middle)
              |r $ %{} :Expr (:at 1651246908618) (:by |bjmr3HZle)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1651246912833) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246914507) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246916678) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247089899) (:by |bjmr3HZle) (:text |ui/row-middle)
        |row-parted $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1513270580779) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246945250) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1513270580779) (:by |root) (:text |row-parted)
              |r $ %{} :Expr (:at 1651246946271) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246946728) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246948407) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246950776) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247060148) (:by |bjmr3HZle) (:text |ui/row-parted)
        |select $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246474769) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |select)
              |r $ %{} :Expr (:at 1651246475567) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246476075) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246476665) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246478282) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247457451) (:by |bjmr3HZle) (:text |ui/select)
                  |b $ %{} :Expr (:at 1651246482354) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246500922) (:by |bjmr3HZle) (:text "|\"$0:focus")
                      |T $ %{} :Expr (:at 1651246496886) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1651246496886) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |:border)
                              |b $ %{} :Expr (:at 1651246496886) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |str)
                                  |b $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1651246496886) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |200)
                                      |h $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |50)
                                      |l $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |75)
                          |h $ %{} :Expr (:at 1651246496886) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1651246496886) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |str)
                                  |b $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text "|\"0 0 4px ")
                                  |h $ %{} :Expr (:at 1651246496886) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |200)
                                      |h $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |70)
                                      |l $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |50)
                                      |o $ %{} :Leaf (:at 1651246496886) (:by |bjmr3HZle) (:text |0.2)
        |tag $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1711384617973) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1711385526699) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1711384617973) (:by |bjmr3HZle) (:text |tag)
              |h $ %{} :Expr (:at 1711384617973) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1711385528536) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1711385529701) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385530820) (:by |bjmr3HZle) (:text |:&)
                      |b $ %{} :Leaf (:at 1711385535563) (:by |bjmr3HZle) (:text |ui/tag)
        |tag-outline $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1711384629896) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1711385839224) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1711384629896) (:by |bjmr3HZle) (:text |tag-outline)
              |h $ %{} :Expr (:at 1711384629896) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1711385840413) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1711385840737) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385841837) (:by |bjmr3HZle) (:text |:&)
                      |b $ %{} :Leaf (:at 1711385848767) (:by |bjmr3HZle) (:text |ui/tag-outline)
        |tag-stroke $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1711384626246) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1711385694638) (:by |bjmr3HZle) (:text |defstyle)
              |b $ %{} :Leaf (:at 1711384626246) (:by |bjmr3HZle) (:text |tag-stroke)
              |h $ %{} :Expr (:at 1711384626246) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1711385695725) (:by |bjmr3HZle) (:text |{})
                  |b $ %{} :Expr (:at 1711385696264) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1711385697529) (:by |bjmr3HZle) (:text |:&)
                      |b $ %{} :Leaf (:at 1711385719821) (:by |bjmr3HZle) (:text |ui/tag-stroke)
        |text-label $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651247546822) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |text-label)
              |r $ %{} :Expr (:at 1651247547661) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651247548135) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651247548641) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651247549931) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247556149) (:by |bjmr3HZle) (:text |ui/text-label)
        |textarea $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651246397235) (:by |bjmr3HZle) (:text |defstyle)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |textarea)
              |r $ %{} :Expr (:at 1651246398389) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246398934) (:by |bjmr3HZle) (:text |{})
                  |T $ %{} :Expr (:at 1651246399363) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651246401199) (:by |bjmr3HZle) (:text "|\"$0")
                      |P $ %{} :Leaf (:at 1651247471501) (:by |bjmr3HZle) (:text |ui/textarea)
                  |b $ %{} :Expr (:at 1651246403761) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651246412041) (:by |bjmr3HZle) (:text "|\"$0:focus")
                      |b $ %{} :Expr (:at 1651246418414) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |{})
                          |b $ %{} :Expr (:at 1651246418414) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |:border)
                              |b $ %{} :Expr (:at 1651246418414) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |str)
                                  |b $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1651246418414) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |200)
                                      |h $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |50)
                                      |l $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |75)
                          |h $ %{} :Expr (:at 1651246418414) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |:box-shadow)
                              |b $ %{} :Expr (:at 1651246418414) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |str)
                                  |b $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text "|\"0 0 4px ")
                                  |h $ %{} :Expr (:at 1651246418414) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |200)
                                      |h $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |70)
                                      |l $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |50)
                                      |o $ %{} :Leaf (:at 1651246418414) (:by |bjmr3HZle) (:text |0.2)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.css)
            |r $ %{} :Expr (:at 1506675837748) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:require)
                |X $ %{} :Expr (:at 1651246240357) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651246245604) (:by |bjmr3HZle) (:text |respo-ui.core)
                    |b $ %{} :Leaf (:at 1651246247887) (:by |bjmr3HZle) (:text |:as)
                    |h $ %{} :Leaf (:at 1651246248276) (:by |bjmr3HZle) (:text |ui)
                |b $ %{} :Expr (:at 1651244907172) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651245045446) (:by |bjmr3HZle) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1651244913576) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1651244914065) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651244915178) (:by |bjmr3HZle) (:text |defstyle)
                |h $ %{} :Expr (:at 1701534915103) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1701534919875) (:by |bjmr3HZle) (:text |respo.util.format)
                    |b $ %{} :Leaf (:at 1701534920734) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1701534921016) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1701534922211) (:by |bjmr3HZle) (:text |hsl)
    |respo-ui.main $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610558435578) (:by |bjmr3HZle) (:text |defatom)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |*store)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |merge)
                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:router)
                          |j $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |parse-address)
                              |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1702316933604) (:by |bjmr3HZle) (:text |.!slice)
                                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1702317005553) (:by |bjmr3HZle) (:text |.-hash)
                                      |j $ %{} :Leaf (:at 1702316928512) (:by |bjmr3HZle) (:text |js/location)
                                  |t $ %{} :Leaf (:at 1702316935175) (:by |bjmr3HZle) (:text |1)
                              |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |router/dict)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1555608432129) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1555608432129) (:by |bjmr3HZle) (:text |when)
                  |j $ %{} :Leaf (:at 1555608432129) (:by |bjmr3HZle) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1555608432129) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1702316541633) (:by |bjmr3HZle) (:text |js/console.log)
                      |j $ %{} :Leaf (:at 1555608432129) (:by |bjmr3HZle) (:text "|\"Dispatch:")
                      |r $ %{} :Leaf (:at 1555608432129) (:by |bjmr3HZle) (:text |op)
              |x $ %{} :Expr (:at 1689691513118) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1689691513118) (:by |bjmr3HZle) (:text |reset!)
                  |b $ %{} :Leaf (:at 1689691513118) (:by |bjmr3HZle) (:text |*store)
                  |h $ %{} :Expr (:at 1689691513118) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1689691513118) (:by |bjmr3HZle) (:text |updater)
                      |b $ %{} :Leaf (:at 1689691513118) (:by |bjmr3HZle) (:text |@*store)
                      |h $ %{} :Leaf (:at 1689691513118) (:by |bjmr3HZle) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
              |s $ %{} :Expr (:at 1702317060348) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1702317060890) (:by |bjmr3HZle) (:text |if)
                  |L $ %{} :Leaf (:at 1702317066340) (:by |bjmr3HZle) (:text |config/dev?)
                  |T $ %{} :Expr (:at 1690724387103) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1690724387103) (:by |bjmr3HZle) (:text |load-console-formatter!)
              |u $ %{} :Expr (:at 1555608480766) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1555608480766) (:by |bjmr3HZle) (:text |println)
                  |j $ %{} :Leaf (:at 1555608480766) (:by |bjmr3HZle) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1555608480766) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1555608480766) (:by |bjmr3HZle) (:text |if)
                      |j $ %{} :Leaf (:at 1555608480766) (:by |bjmr3HZle) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1555608480766) (:by |bjmr3HZle) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1555608480766) (:by |bjmr3HZle) (:text "|\"release")
              |w $ %{} :Expr (:at 1702316687645) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702316687645) (:by |bjmr3HZle) (:text |render-router!)
              |yT $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1519578394265) (:by |root) (:text |*store)
                  |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1506676441462) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1506676442082) (:by |root) (:text |fn)
                      |L $ %{} :Expr (:at 1506676442344) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614696025588) (:by |bjmr3HZle) (:text |store)
                          |j $ %{} :Leaf (:at 1614696026217) (:by |bjmr3HZle) (:text |prev)
                      |T $ %{} :Expr (:at 1506676443772) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-app!)
              |yr $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610699935104) (:by |bjmr3HZle) (:text |listen!)
                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |router/dict)
                  |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |dispatch!)
                  |v $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |router/mode)
              |yv $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1519578396718) (:by |root) (:text |*store)
                  |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:router-changes)
                  |v $ %{} :Expr (:at 1614696045656) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1614696047141) (:by |bjmr3HZle) (:text |fn)
                      |L $ %{} :Expr (:at 1614696047437) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614696048763) (:by |bjmr3HZle) (:text |store)
                          |j $ %{} :Leaf (:at 1614696050570) (:by |bjmr3HZle) (:text |prev)
                      |T $ %{} :Expr (:at 1614696051862) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-router!)
              |yw $ %{} :Expr (:at 1702316241724) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702316241724) (:by |bjmr3HZle) (:text |render-app!)
              |yx $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text "||App started!")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506676468060) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1506676468786) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506676468060) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1657076574123) (:by |bjmr3HZle) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1506676471766) (:by |root) (:text ||.app)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651245224729) (:by |bjmr3HZle)
            :data $ {}
              |D $ %{} :Leaf (:at 1651245225520) (:by |bjmr3HZle) (:text |defn)
              |L $ %{} :Leaf (:at 1651245227936) (:by |bjmr3HZle) (:text |reload!)
              |P $ %{} :Expr (:at 1651245228585) (:by |bjmr3HZle)
                :data $ {}
              |T $ %{} :Expr (:at 1651245234785) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651246106403) (:by |bjmr3HZle) (:text |if)
                  |H $ %{} :Expr (:at 1651246106403) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651246106403) (:by |bjmr3HZle) (:text |nil?)
                      |b $ %{} :Leaf (:at 1651246106403) (:by |bjmr3HZle) (:text |build-errors)
                  |L $ %{} :Leaf (:at 1651245236526) (:by |bjmr3HZle) (:text |)
                  |T $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651245233070) (:by |bjmr3HZle) (:text |do)
                      |s $ %{} :Expr (:at 1614696150770) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614696155300) (:by |bjmr3HZle) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1614696150770) (:by |bjmr3HZle) (:text |*store)
                          |r $ %{} :Leaf (:at 1614696150770) (:by |bjmr3HZle) (:text |:changes)
                      |t $ %{} :Expr (:at 1614696142494) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614696145655) (:by |bjmr3HZle) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1614696142494) (:by |bjmr3HZle) (:text |*store)
                          |r $ %{} :Leaf (:at 1614696142494) (:by |bjmr3HZle) (:text |:router-changes)
                      |v $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |clear-cache!)
                      |w $ %{} :Expr (:at 1614696131060) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614696131060) (:by |bjmr3HZle) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1614696131060) (:by |bjmr3HZle) (:text |*store)
                          |r $ %{} :Leaf (:at 1614696131060) (:by |bjmr3HZle) (:text |:changes)
                          |v $ %{} :Expr (:at 1614696131060) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1614696131060) (:by |bjmr3HZle) (:text |fn)
                              |j $ %{} :Expr (:at 1614696131060) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614696131060) (:by |bjmr3HZle) (:text |store)
                                  |j $ %{} :Leaf (:at 1614696131060) (:by |bjmr3HZle) (:text |prev)
                              |r $ %{} :Expr (:at 1614696131060) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614696131060) (:by |bjmr3HZle) (:text |render-app!)
                      |wT $ %{} :Expr (:at 1614696140292) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614696140292) (:by |bjmr3HZle) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1614696140292) (:by |bjmr3HZle) (:text |*store)
                          |r $ %{} :Leaf (:at 1614696140292) (:by |bjmr3HZle) (:text |:router-changes)
                          |v $ %{} :Expr (:at 1614696140292) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1614696140292) (:by |bjmr3HZle) (:text |fn)
                              |j $ %{} :Expr (:at 1614696140292) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614696140292) (:by |bjmr3HZle) (:text |store)
                                  |j $ %{} :Leaf (:at 1614696140292) (:by |bjmr3HZle) (:text |prev)
                              |r $ %{} :Expr (:at 1614696140292) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614696140292) (:by |bjmr3HZle) (:text |render-router!)
                      |x $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-app!)
                      |xT $ %{} :Expr (:at 1651246098083) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651246098083) (:by |bjmr3HZle) (:text |hud!)
                          |b $ %{} :Leaf (:at 1651246098083) (:by |bjmr3HZle) (:text "|\"ok~")
                          |h $ %{} :Leaf (:at 1651246098083) (:by |bjmr3HZle) (:text "|\"Ok")
                      |y $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |println)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text "||Code updated!")
                  |b $ %{} :Expr (:at 1651246115719) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651246115719) (:by |bjmr3HZle) (:text |hud!)
                      |b $ %{} :Leaf (:at 1651246115719) (:by |bjmr3HZle) (:text "|\"error")
                      |h $ %{} :Leaf (:at 1651246115719) (:by |bjmr3HZle) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1702316757382) (:by |bjmr3HZle) (:text |render!)
                  |b $ %{} :Leaf (:at 1506676464972) (:by |root) (:text |mount-target)
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1519578540486) (:by |root) (:text |@*store)
                  |v $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |dispatch!)
        |render-router! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-router!)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-url!)
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:router)
                      |j $ %{} :Leaf (:at 1519578400422) (:by |root) (:text |@*store)
                  |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |router/dict)
                  |v $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |router/mode)
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1687886682142) (:by |bjmr3HZle) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |op)
                  |r $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687886690659) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1687886693730) (:by |bjmr3HZle) (:text |cursor)
                          |h $ %{} :Leaf (:at 1687886694021) (:by |bjmr3HZle) (:text |s)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1586624919363) (:by |bjmr3HZle) (:text |update-states)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1687886697537) (:by |bjmr3HZle) (:text |cursor)
                          |t $ %{} :Leaf (:at 1687886697769) (:by |bjmr3HZle) (:text |s)
                  |x $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687886700034) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:router/nav)
                          |b $ %{} :Leaf (:at 1687886701476) (:by |bjmr3HZle) (:text |t)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:router)
                          |v $ %{} :Expr (:at 1506675837748) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |parse-address)
                              |j $ %{} :Leaf (:at 1687886703585) (:by |bjmr3HZle) (:text |t)
                              |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |router/dict)
                  |xT $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687886700034) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1690724730208) (:by |bjmr3HZle) (:text |:router/route)
                          |b $ %{} :Leaf (:at 1690724733734) (:by |bjmr3HZle) (:text |r)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:router)
                          |t $ %{} :Leaf (:at 1690724735194) (:by |bjmr3HZle) (:text |r)
                  |y $ %{} :Expr (:at 1687886685883) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1687886686516) (:by |bjmr3HZle) (:text |_)
                      |T $ %{} :Expr (:at 1687886685444) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1687886685444) (:by |bjmr3HZle) (:text |do)
                          |b $ %{} :Expr (:at 1687886685444) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1690724492774) (:by |bjmr3HZle) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1687886685444) (:by |bjmr3HZle) (:text "|\"Unknown op:")
                              |h $ %{} :Leaf (:at 1687886685444) (:by |bjmr3HZle) (:text |op)
                          |h $ %{} :Leaf (:at 1687886685444) (:by |bjmr3HZle) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.main)
            |r $ %{} :Expr (:at 1506675837748) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |clear-cache!)
                |r $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1586624927588) (:by |bjmr3HZle) (:text |update-states)
                |v $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.comp.container)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |comp-container)
                |yT $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.router)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |router)
                |yr $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.schema)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |schema)
                |yv $ %{} :Expr (:at 1555608435441) (:by |bjmr3HZle)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1555608442787) (:by |bjmr3HZle) (:text |respo-ui.config)
                    |r $ %{} :Leaf (:at 1555608443235) (:by |bjmr3HZle) (:text |:as)
                    |v $ %{} :Leaf (:at 1555608443931) (:by |bjmr3HZle) (:text |config)
                |yx $ %{} :Expr (:at 1610699019395) (:by |bjmr3HZle)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610699073799) (:by |bjmr3HZle) (:text |respo-router.parser)
                    |r $ %{} :Leaf (:at 1610699078129) (:by |bjmr3HZle) (:text |:refer)
                    |v $ %{} :Expr (:at 1610699078324) (:by |bjmr3HZle)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1610699079069) (:by |bjmr3HZle) (:text |parse-address)
                |yy $ %{} :Expr (:at 1610699946162) (:by |bjmr3HZle)
                  :data $ {}
                    |b $ %{} :Leaf (:at 1610699970451) (:by |bjmr3HZle) (:text |respo-router.core)
                    |f $ %{} :Leaf (:at 1610699971203) (:by |bjmr3HZle) (:text |:refer)
                    |j $ %{} :Expr (:at 1610699964845) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610699946902) (:by |bjmr3HZle) (:text |render-url!)
                |yyT $ %{} :Expr (:at 1610700005534) (:by |bjmr3HZle)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610700052005) (:by |bjmr3HZle) (:text |respo-router.listener)
                    |r $ %{} :Leaf (:at 1610700011048) (:by |bjmr3HZle) (:text |:refer)
                    |v $ %{} :Expr (:at 1610700011246) (:by |bjmr3HZle)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1610700012746) (:by |bjmr3HZle) (:text |listen!)
                |z $ %{} :Expr (:at 1651246074829) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651246074829) (:by |bjmr3HZle) (:text "|\"./calcit.build-errors")
                    |b $ %{} :Leaf (:at 1651246074829) (:by |bjmr3HZle) (:text |:default)
                    |h $ %{} :Leaf (:at 1651246074829) (:by |bjmr3HZle) (:text |build-errors)
                |zD $ %{} :Expr (:at 1651246074829) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651246074829) (:by |bjmr3HZle) (:text "|\"bottom-tip")
                    |b $ %{} :Leaf (:at 1651246074829) (:by |bjmr3HZle) (:text |:default)
                    |h $ %{} :Leaf (:at 1651246074829) (:by |bjmr3HZle) (:text |hud!)
    |respo-ui.router $ %{} :FileEntry
      :defs $ {}
        |dict $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |dict)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1690724303284) (:by |bjmr3HZle) (:text |[])
                  |j $ %{} :Expr (:at 1690724109049) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1690724109649) (:by |bjmr3HZle) (:text |::)
                      |L $ %{} :Leaf (:at 1690724111622) (:by |bjmr3HZle) (:text |:index)
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724108524) (:by |bjmr3HZle) (:text |[])
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||index.html)
                  |r $ %{} :Expr (:at 1690724113632) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1690724115551) (:by |bjmr3HZle) (:text |::)
                      |L $ %{} :Leaf (:at 1690724116854) (:by |bjmr3HZle) (:text |:dev)
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724118484) (:by |bjmr3HZle) (:text |[])
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||dev.html)
                  |x $ %{} :Expr (:at 1690724122615) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1690724123195) (:by |bjmr3HZle) (:text |::)
                      |L $ %{} :Leaf (:at 1690724124660) (:by |bjmr3HZle) (:text |:fonts)
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724122130) (:by |bjmr3HZle) (:text |[])
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||fonts.html)
                  |y $ %{} :Expr (:at 1690724127373) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1690724128063) (:by |bjmr3HZle) (:text |::)
                      |L $ %{} :Leaf (:at 1691559226052) (:by |bjmr3HZle) (:text |:widgets)
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724126919) (:by |bjmr3HZle) (:text |[])
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||widgets.html)
                  |yT $ %{} :Expr (:at 1690724133838) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1690724134529) (:by |bjmr3HZle) (:text |::)
                      |L $ %{} :Leaf (:at 1690724136823) (:by |bjmr3HZle) (:text |:layouts)
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724138580) (:by |bjmr3HZle) (:text |[])
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||layouts.html)
                  |yj $ %{} :Expr (:at 1690724149302) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1690724149882) (:by |bjmr3HZle) (:text |::)
                      |L $ %{} :Leaf (:at 1690724152222) (:by |bjmr3HZle) (:text |:components)
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724148667) (:by |bjmr3HZle) (:text |[])
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||components.html)
                  |z $ %{} :Expr (:at 1690724149302) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1690724149882) (:by |bjmr3HZle) (:text |::)
                      |L $ %{} :Leaf (:at 1703008403768) (:by |bjmr3HZle) (:text |:utils)
                      |T $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1690724148667) (:by |bjmr3HZle) (:text |[])
                          |T $ %{} :Leaf (:at 1703008406290) (:by |bjmr3HZle) (:text ||utils.html)
        |mode $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |mode)
              |r $ %{} :Leaf (:at 1610700576396) (:by |bjmr3HZle) (:text |:hash)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.router)
    |respo-ui.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1506675837748) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:router)
                      |b $ %{} :Leaf (:at 1702317020769) (:by |bjmr3HZle) (:text |nil)
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1506675837748) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo-ui.schema)
            |n $ %{} :Expr (:at 1702316402489) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1702316403257) (:by |bjmr3HZle) (:text |:require)
                |b $ %{} :Expr (:at 1702316403970) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1702316413131) (:by |bjmr3HZle) (:text |respo-ui.router)
                    |b $ %{} :Leaf (:at 1702316415216) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1702316415682) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1702316417033) (:by |bjmr3HZle) (:text |dict)
                |h $ %{} :Expr (:at 1702316430932) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1702316430932) (:by |bjmr3HZle) (:text |respo-router.parser)
                    |b $ %{} :Leaf (:at 1702316430932) (:by |bjmr3HZle) (:text |:refer)
                    |h $ %{} :Expr (:at 1702316430932) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1702316430932) (:by |bjmr3HZle) (:text |parse-address)
    |respo-ui.util $ %{} :FileEntry
      :defs $ {}
        |santinize-html-text $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1703777111780) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1703777112920) (:by |bjmr3HZle) (:text |defn)
              |b $ %{} :Leaf (:at 1703777111780) (:by |bjmr3HZle) (:text |santinize-html-text)
              |h $ %{} :Expr (:at 1703777111780) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1703777114418) (:by |bjmr3HZle) (:text |content)
              |l $ %{} :Expr (:at 1703777115771) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1703777115771) (:by |bjmr3HZle) (:text |->)
                  |b $ %{} :Leaf (:at 1703777115771) (:by |bjmr3HZle) (:text |content)
                  |h $ %{} :Expr (:at 1703777115771) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1703777115771) (:by |bjmr3HZle) (:text |.replace)
                      |b $ %{} :Leaf (:at 1703777115771) (:by |bjmr3HZle) (:text "|\"<")
                      |h $ %{} :Leaf (:at 1703777115771) (:by |bjmr3HZle) (:text "|\"&lt;")
                  |l $ %{} :Expr (:at 1703777115771) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1703777115771) (:by |bjmr3HZle) (:text |.replace)
                      |b $ %{} :Leaf (:at 1703777115771) (:by |bjmr3HZle) (:text "|\">")
                      |h $ %{} :Leaf (:at 1703777115771) (:by |bjmr3HZle) (:text "|\"&gt;")
                  |o $ %{} :Expr (:at 1703777115771) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1703777115771) (:by |bjmr3HZle) (:text |.replace)
                      |b $ %{} :Leaf (:at 1703777115771) (:by |bjmr3HZle) (:text "|\" ")
                      |h $ %{} :Leaf (:at 1703777115771) (:by |bjmr3HZle) (:text "|\"&nbsp;")
        |tab-echo! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1703008231342) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1703008231342) (:by |bjmr3HZle) (:text |defn)
              |b $ %{} :Leaf (:at 1703008231342) (:by |bjmr3HZle) (:text |tab-echo!)
              |h $ %{} :Expr (:at 1703008231342) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1703008234978) (:by |bjmr3HZle) (:text |data)
                  |b $ %{} :Leaf (:at 1703683294836) (:by |bjmr3HZle) (:text |?)
                  |h $ %{} :Leaf (:at 1703683297190) (:by |bjmr3HZle) (:text |format)
              |l $ %{} :Expr (:at 1703683307332) (:by |bjmr3HZle)
                :data $ {}
                  |D $ %{} :Leaf (:at 1703683315768) (:by |bjmr3HZle) (:text |case-default)
                  |L $ %{} :Leaf (:at 1703683317855) (:by |bjmr3HZle) (:text |format)
                  |T $ %{} :Expr (:at 1703008273337) (:by |bjmr3HZle)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1703008276027) (:by |bjmr3HZle) (:text |let)
                      |T $ %{} :Expr (:at 1703008276620) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Expr (:at 1703008276761) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1703008278356) (:by |bjmr3HZle) (:text |content)
                              |T $ %{} :Expr (:at 1703008270768) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703008283855) (:by |bjmr3HZle) (:text |format-cirru-edn)
                                  |b $ %{} :Expr (:at 1703008674074) (:by |bjmr3HZle)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1703008675028) (:by |bjmr3HZle) (:text |::)
                                      |L $ %{} :Leaf (:at 1703009023398) (:by |bjmr3HZle) (:text |:tab-echo)
                                      |T $ %{} :Leaf (:at 1703008285756) (:by |bjmr3HZle) (:text |data)
                          |X $ %{} :Expr (:at 1703008330281) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703008330685) (:by |bjmr3HZle) (:text |app)
                              |b $ %{} :Leaf (:at 1703008719987) (:by |bjmr3HZle) (:text "|\"https://r.tiye.me/Memkits/edn-tree-viewer/?mode=dev")
                          |b $ %{} :Expr (:at 1703008310555) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703008311055) (:by |bjmr3HZle) (:text |w)
                              |b $ %{} :Expr (:at 1703008311586) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703008315615) (:by |bjmr3HZle) (:text |js/window.open)
                                  |X $ %{} :Leaf (:at 1703008327704) (:by |bjmr3HZle) (:text |app)
                                  |b $ %{} :Leaf (:at 1703008944434) (:by |bjmr3HZle) (:text "|\"_target")
                      |X $ %{} :Expr (:at 1703009086251) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text |flipped)
                          |b $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text |js/setTimeout)
                          |h $ %{} :Leaf (:at 1703009269232) (:by |bjmr3HZle) (:text |20)
                          |l $ %{} :Expr (:at 1703009086251) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text |fn)
                              |b $ %{} :Expr (:at 1703009086251) (:by |bjmr3HZle)
                                :data $ {}
                              |h $ %{} :Expr (:at 1703009086251) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text |.!postMessage)
                                  |b $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text |w)
                                  |h $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text |content)
                                  |l $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text "|\"https://r.tiye.me")
                      |e $ %{} :Expr (:at 1703009086251) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text |flipped)
                          |b $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text |js/setTimeout)
                          |h $ %{} :Leaf (:at 1703009261198) (:by |bjmr3HZle) (:text |200)
                          |l $ %{} :Expr (:at 1703009086251) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text |fn)
                              |b $ %{} :Expr (:at 1703009086251) (:by |bjmr3HZle)
                                :data $ {}
                              |h $ %{} :Expr (:at 1703009086251) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text |.!postMessage)
                                  |b $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text |w)
                                  |h $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text |content)
                                  |l $ %{} :Leaf (:at 1703009086251) (:by |bjmr3HZle) (:text "|\"https://r.tiye.me")
                  |b $ %{} :Expr (:at 1703683319514) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1703683321719) (:by |bjmr3HZle) (:text |:json)
                      |b $ %{} :Expr (:at 1703683327722) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703683327722) (:by |bjmr3HZle) (:text |let)
                          |b $ %{} :Expr (:at 1703683327722) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Expr (:at 1703683327722) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703683327722) (:by |bjmr3HZle) (:text |content)
                                  |b $ %{} :Expr (:at 1703683327722) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703683338579) (:by |bjmr3HZle) (:text |js/JSON.stringify)
                                      |b $ %{} :Expr (:at 1703683340928) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1703683342369) (:by |bjmr3HZle) (:text |to-js-data)
                                          |b $ %{} :Leaf (:at 1703683343491) (:by |bjmr3HZle) (:text |data)
                                      |h $ %{} :Leaf (:at 1703683789609) (:by |bjmr3HZle) (:text |nil)
                                      |l $ %{} :Leaf (:at 1703683790219) (:by |bjmr3HZle) (:text |2)
                              |h $ %{} :Expr (:at 1703683327722) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703683327722) (:by |bjmr3HZle) (:text |w)
                                  |b $ %{} :Expr (:at 1703683327722) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703683327722) (:by |bjmr3HZle) (:text |js/window.open)
                                      |h $ %{} :Leaf (:at 1703683494040) (:by |bjmr3HZle) (:text "|\"about:blank")
                                      |l $ %{} :Leaf (:at 1703683496982) (:by |bjmr3HZle) (:text "|\"_blank")
                          |h $ %{} :Expr (:at 1703683513427) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703683515754) (:by |bjmr3HZle) (:text |->)
                              |b $ %{} :Leaf (:at 1703683516167) (:by |bjmr3HZle) (:text |w)
                              |h $ %{} :Leaf (:at 1703683520785) (:by |bjmr3HZle) (:text |.-document)
                              |l $ %{} :Leaf (:at 1703683522667) (:by |bjmr3HZle) (:text |.-body)
                              |o $ %{} :Leaf (:at 1703683532722) (:by |bjmr3HZle) (:text |.-innerHTML)
                              |q $ %{} :Expr (:at 1703683533665) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703683535741) (:by |bjmr3HZle) (:text |set!)
                                  |b $ %{} :Expr (:at 1703683539166) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703683539944) (:by |bjmr3HZle) (:text |str)
                                      |b $ %{} :Leaf (:at 1703683542790) (:by |bjmr3HZle) (:text "|\"<pre>")
                                      |e $ %{} :Expr (:at 1703777128887) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1703777128887) (:by |bjmr3HZle) (:text |santinize-html-text)
                                          |b $ %{} :Leaf (:at 1703777128887) (:by |bjmr3HZle) (:text |content)
                                      |h $ %{} :Leaf (:at 1703683545736) (:by |bjmr3HZle) (:text "|\"</pre>")
                  |h $ %{} :Expr (:at 1703683319514) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1703777066316) (:by |bjmr3HZle) (:text |:edn)
                      |b $ %{} :Expr (:at 1703683327722) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1703683327722) (:by |bjmr3HZle) (:text |let)
                          |b $ %{} :Expr (:at 1703683327722) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Expr (:at 1703683327722) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703683327722) (:by |bjmr3HZle) (:text |content)
                                  |b $ %{} :Expr (:at 1703777086112) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703777089121) (:by |bjmr3HZle) (:text |format-cirru-edn)
                                      |b $ %{} :Leaf (:at 1703777090372) (:by |bjmr3HZle) (:text |data)
                              |h $ %{} :Expr (:at 1703683327722) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703683327722) (:by |bjmr3HZle) (:text |w)
                                  |b $ %{} :Expr (:at 1703683327722) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703683327722) (:by |bjmr3HZle) (:text |js/window.open)
                                      |h $ %{} :Leaf (:at 1703683494040) (:by |bjmr3HZle) (:text "|\"about:blank")
                                      |l $ %{} :Leaf (:at 1703683496982) (:by |bjmr3HZle) (:text "|\"_blank")
                          |h $ %{} :Expr (:at 1703683513427) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1703683515754) (:by |bjmr3HZle) (:text |->)
                              |b $ %{} :Leaf (:at 1703683516167) (:by |bjmr3HZle) (:text |w)
                              |h $ %{} :Leaf (:at 1703683520785) (:by |bjmr3HZle) (:text |.-document)
                              |l $ %{} :Leaf (:at 1703683522667) (:by |bjmr3HZle) (:text |.-body)
                              |o $ %{} :Leaf (:at 1703683532722) (:by |bjmr3HZle) (:text |.-innerHTML)
                              |q $ %{} :Expr (:at 1703683533665) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1703683535741) (:by |bjmr3HZle) (:text |set!)
                                  |b $ %{} :Expr (:at 1703683539166) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1703683539944) (:by |bjmr3HZle) (:text |str)
                                      |b $ %{} :Leaf (:at 1703683542790) (:by |bjmr3HZle) (:text "|\"<pre>")
                                      |e $ %{} :Expr (:at 1703683813053) (:by |bjmr3HZle)
                                        :data $ {}
                                          |H $ %{} :Leaf (:at 1703777111284) (:by |bjmr3HZle) (:text |santinize-html-text)
                                          |L $ %{} :Leaf (:at 1703683817947) (:by |bjmr3HZle) (:text |content)
                                      |h $ %{} :Leaf (:at 1703683545736) (:by |bjmr3HZle) (:text "|\"</pre>")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1703008227012) (:by |bjmr3HZle)
          :data $ {}
            |T $ %{} :Leaf (:at 1703008227012) (:by |bjmr3HZle) (:text |ns)
            |b $ %{} :Leaf (:at 1703008227012) (:by |bjmr3HZle) (:text |respo-ui.util)
  :users $ {}
    |bjmr3HZle $ {} (:avatar nil) (:id |bjmr3HZle) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
