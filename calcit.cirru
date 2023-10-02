
{} (:package |respo-ui)
  :configs $ {} (:init-fn |respo-ui.main/main!) (:output |src) (:port 6001) (:reload-fn |respo-ui.main/reload!) (:storage-key |calcit.cirru) (:version |0.5.0)
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
                                              |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |item)
                                          |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |[])
                                              |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |idx)
                                              |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
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
                                                      |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |<>)
                                                          |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |&map:get)
                                                              |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |item)
                                                              |h $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:value)
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
        |comp-cirru-snippet $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1593161556909) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1593161560305) (:by |bjmr3HZle) (:text |defcomp)
              |j $ %{} :Leaf (:at 1695746203264) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
              |r $ %{} :Expr (:at 1593161556909) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1593161566336) (:by |bjmr3HZle) (:text |text)
                  |j $ %{} :Leaf (:at 1593161567554) (:by |bjmr3HZle) (:text |styles)
              |v $ %{} :Expr (:at 1593161567991) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1593161568559) (:by |bjmr3HZle) (:text |div)
                  |j $ %{} :Expr (:at 1593161568734) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1593161569113) (:by |bjmr3HZle) (:text |{})
                      |f $ %{} :Expr (:at 1651248364126) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651248366396) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1651248378515) (:by |bjmr3HZle) (:text |css-snippet)
                      |r $ %{} :Expr (:at 1593161579964) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1593161581563) (:by |bjmr3HZle) (:text |:style)
                          |j $ %{} :Leaf (:at 1593161584772) (:by |bjmr3HZle) (:text |styles)
                  |r $ %{} :Expr (:at 1593161962470) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1644509679567) (:by |bjmr3HZle) (:text |pre)
                      |j $ %{} :Expr (:at 1644509685930) (:by |bjmr3HZle)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1644509686908) (:by |bjmr3HZle) (:text |{})
                          |T $ %{} :Expr (:at 1644509687460) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1644509691389) (:by |bjmr3HZle) (:text |:innerHTML)
                              |T $ %{} :Expr (:at 1644509721979) (:by |bjmr3HZle)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1644509722599) (:by |bjmr3HZle) (:text |generateHtml)
                                  |T $ %{} :Leaf (:at 1593161963758) (:by |bjmr3HZle) (:text |text)
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
              |l $ %{} :Expr (:at 1695747007292) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695747065908) (:by |bjmr3HZle) (:text |pre)
                  |b $ %{} :Expr (:at 1695747007292) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695747007292) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1695747007292) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747007292) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Expr (:at 1695747020875) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695747022692) (:by |bjmr3HZle) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1695747007292) (:by |bjmr3HZle) (:text |css-snippet)
                              |b $ %{} :Expr (:at 1695747023598) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695747025688) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1695747026112) (:by |bjmr3HZle) (:text |options)
                      |h $ %{} :Expr (:at 1695747007292) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747007292) (:by |bjmr3HZle) (:text |:style)
                          |b $ %{} :Expr (:at 1695747029613) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747030431) (:by |bjmr3HZle) (:text |:styles)
                              |b $ %{} :Leaf (:at 1695747030895) (:by |bjmr3HZle) (:text |options)
                      |l $ %{} :Expr (:at 1695747073442) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747073442) (:by |bjmr3HZle) (:text |:inner-text)
                          |b $ %{} :Leaf (:at 1695747151171) (:by |bjmr3HZle) (:text |code)
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
              |v $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |list->)
                  |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |{})
                      |b $ %{} :Expr (:at 1651248083054) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651248087603) (:by |bjmr3HZle) (:text |:class-name)
                          |b $ %{} :Expr (:at 1651248089742) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651248089742) (:by |bjmr3HZle) (:text |if)
                              |b $ %{} :Expr (:at 1651248089742) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651248089742) (:by |bjmr3HZle) (:text |:vertical?)
                                  |b $ %{} :Leaf (:at 1651248089742) (:by |bjmr3HZle) (:text |options)
                              |h $ %{} :Leaf (:at 1651248197750) (:by |bjmr3HZle) (:text |css/column)
                              |l $ %{} :Leaf (:at 1651248211154) (:by |bjmr3HZle) (:text |css/row)
                      |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:style)
                          |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |merge)
                              |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |{})
                                  |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1645115696476) (:by |bjmr3HZle) (:text "|\"4px 16px")
                                  |r $ %{} :Expr (:at 1592800386993) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592800388420) (:by |bjmr3HZle) (:text |:width)
                                      |j $ %{} :Expr (:at 1592800389116) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592800389837) (:by |bjmr3HZle) (:text |:width)
                                          |j $ %{} :Leaf (:at 1592800391265) (:by |bjmr3HZle) (:text |options)
                              |v $ %{} :Expr (:at 1592799814864) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592799851231) (:by |bjmr3HZle) (:text |:style)
                                  |j $ %{} :Leaf (:at 1592799817864) (:by |bjmr3HZle) (:text |options)
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
                              |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |[])
                                  |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:name)
                                      |j $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |info)
                                  |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |div)
                                      |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |{})
                                          |b $ %{} :Expr (:at 1651248124487) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651248129502) (:by |bjmr3HZle) (:text |:class-name)
                                              |b $ %{} :Leaf (:at 1651248132145) (:by |bjmr3HZle) (:text |css-tab)
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
                                                      |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |=)
                                                          |j $ %{} :Expr (:at 1592799780263) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1592799780906) (:by |bjmr3HZle) (:text |:selected)
                                                              |j $ %{} :Leaf (:at 1592799782856) (:by |bjmr3HZle) (:text |options)
                                                          |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:name)
                                                              |j $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |info)
                                                      |r $ %{} :Expr (:at 1645115725212) (:by |bjmr3HZle)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1645115726286) (:by |bjmr3HZle) (:text |merge)
                                                          |T $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |{})
                                                              |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:color)
                                                                  |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |hsl)
                                                                      |j $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |0)
                                                                      |r $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |0)
                                                                      |v $ %{} :Leaf (:at 1645115260786) (:by |bjmr3HZle) (:text |100)
                                                              |t $ %{} :Expr (:at 1645115214708) (:by |bjmr3HZle)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1645115250492) (:by |bjmr3HZle) (:text |:background-color)
                                                                  |b $ %{} :Expr (:at 1645115214708) (:by |bjmr3HZle)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1645115214708) (:by |bjmr3HZle) (:text |hsl)
                                                                      |b $ %{} :Leaf (:at 1645115253934) (:by |bjmr3HZle) (:text |200)
                                                                      |h $ %{} :Leaf (:at 1645115256861) (:by |bjmr3HZle) (:text |80)
                                                                      |l $ %{} :Leaf (:at 1645115217015) (:by |bjmr3HZle) (:text |70)
                                                          |b $ %{} :Expr (:at 1645115726755) (:by |bjmr3HZle)
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
                                                      |j $ %{} :Leaf (:at 1592799311222) (:by |bjmr3HZle) (:text |info)
                                                      |r $ %{} :Leaf (:at 1592799313113) (:by |bjmr3HZle) (:text |d!)
                                      |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |<>)
                                          |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:title)
                                              |j $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |info)
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
                      |T $ %{} :Leaf (:at 1651248383892) (:by |bjmr3HZle) (:text "|\"$0")
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
                              |b $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text "|\"4px 6px")
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
                      |y $ %{} :Expr (:at 1592799129604) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592799136287) (:by |bjmr3HZle) (:text |comp-demo-placeholder)
                      |yT $ %{} :Expr (:at 1592799320720) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592799327228) (:by |bjmr3HZle) (:text |comp-demo-tabs)
                          |j $ %{} :Expr (:at 1592799385073) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592799386314) (:by |bjmr3HZle) (:text |>>)
                              |j $ %{} :Leaf (:at 1592799387304) (:by |bjmr3HZle) (:text |states)
                              |r $ %{} :Leaf (:at 1592799388733) (:by |bjmr3HZle) (:text |:tabs)
                      |z $ %{} :Expr (:at 1678209524077) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678209527829) (:by |bjmr3HZle) (:text |comp-demo-attributes)
                      |zD $ %{} :Expr (:at 1695746337418) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695746342234) (:by |bjmr3HZle) (:text |comp-demo-cirru-snippet)
                      |zP $ %{} :Expr (:at 1695747097156) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747100265) (:by |bjmr3HZle) (:text |comp-demo-snippet)
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
                          |b $ %{} :Leaf (:at 1695746765292) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-attributes\n\n\ncomp-attributes $ {}\n  :items $ []\n    {} (:label \"\\\"DEMO\")\n      :value \"\\\"content\"\n    {} (:label \"\\\"DEMO 2\")\n      :value \"\\\"content 2\"\n    {} (:label \"\\\"DEMO 2\")\n      :value \"\\\"content 2\"\n      :span 2\n    {} (:label \"\\\"DEMO 2\")\n      :value \"\\\"content 2\"\n    {} (:label \"\\\"DEMO 2\")\n      :value \"\\\"content 2\"\n\n")
                          |h $ %{} :Expr (:at 1695746765292) (:by |bjmr3HZle)
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
                                          |b $ %{} :Expr (:at 1678209559425) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1678209559798) (:by |bjmr3HZle) (:text |{})
                                              |b $ %{} :Expr (:at 1678209560108) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678209562542) (:by |bjmr3HZle) (:text |:label)
                                                  |b $ %{} :Leaf (:at 1678209567826) (:by |bjmr3HZle) (:text "|\"DEMO")
                                              |h $ %{} :Expr (:at 1678209569161) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678209570787) (:by |bjmr3HZle) (:text |:value)
                                                  |b $ %{} :Leaf (:at 1678209577104) (:by |bjmr3HZle) (:text "|\"content")
                                          |h $ %{} :Expr (:at 1678209559425) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1678209559798) (:by |bjmr3HZle) (:text |{})
                                              |b $ %{} :Expr (:at 1678209560108) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678209562542) (:by |bjmr3HZle) (:text |:label)
                                                  |b $ %{} :Leaf (:at 1678209586773) (:by |bjmr3HZle) (:text "|\"DEMO 2")
                                              |h $ %{} :Expr (:at 1678209569161) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678209570787) (:by |bjmr3HZle) (:text |:value)
                                                  |b $ %{} :Leaf (:at 1678209589471) (:by |bjmr3HZle) (:text "|\"content 2")
                                          |l $ %{} :Expr (:at 1678209559425) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1678209559798) (:by |bjmr3HZle) (:text |{})
                                              |b $ %{} :Expr (:at 1678209560108) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678209562542) (:by |bjmr3HZle) (:text |:label)
                                                  |b $ %{} :Leaf (:at 1678209586773) (:by |bjmr3HZle) (:text "|\"DEMO 2")
                                              |h $ %{} :Expr (:at 1678209569161) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678209570787) (:by |bjmr3HZle) (:text |:value)
                                                  |b $ %{} :Leaf (:at 1678209589471) (:by |bjmr3HZle) (:text "|\"content 2")
                                              |l $ %{} :Expr (:at 1678209917817) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678209918173) (:by |bjmr3HZle) (:text |:span)
                                                  |b $ %{} :Leaf (:at 1678209918752) (:by |bjmr3HZle) (:text |2)
                                          |o $ %{} :Expr (:at 1678209559425) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1678209559798) (:by |bjmr3HZle) (:text |{})
                                              |b $ %{} :Expr (:at 1678209560108) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678209562542) (:by |bjmr3HZle) (:text |:label)
                                                  |b $ %{} :Leaf (:at 1678209586773) (:by |bjmr3HZle) (:text "|\"DEMO 2")
                                              |h $ %{} :Expr (:at 1678209569161) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678209570787) (:by |bjmr3HZle) (:text |:value)
                                                  |b $ %{} :Leaf (:at 1678209589471) (:by |bjmr3HZle) (:text "|\"content 2")
                                          |q $ %{} :Expr (:at 1678209559425) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1678209559798) (:by |bjmr3HZle) (:text |{})
                                              |b $ %{} :Expr (:at 1678209560108) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678209562542) (:by |bjmr3HZle) (:text |:label)
                                                  |b $ %{} :Leaf (:at 1678209586773) (:by |bjmr3HZle) (:text "|\"DEMO 2")
                                              |h $ %{} :Expr (:at 1678209569161) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1678209570787) (:by |bjmr3HZle) (:text |:value)
                                                  |b $ %{} :Leaf (:at 1678209589471) (:by |bjmr3HZle) (:text "|\"content 2")
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
                              |b $ %{} :Leaf (:at 1695746798516) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-cirru-snippet\n\ncomp-cirru-snippet \"\\\"defn f (a b)\\n  + a b\" $ {}\n")
                              |h $ %{} :Expr (:at 1695746798516) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695746798516) (:by |bjmr3HZle) (:text |{})
                      |h $ %{} :Expr (:at 1695747173080) (:by |bjmr3HZle)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text |div)
                          |b $ %{} :Expr (:at 1695747173080) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text |{})
                              |b $ %{} :Expr (:at 1695747173080) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text |css/flex)
                          |h $ %{} :Expr (:at 1695747173080) (:by |bjmr3HZle)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text |comp-cirru-snippet)
                              |b $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text "|\"defn f (a b)\n  + a b")
                              |h $ %{} :Expr (:at 1695747173080) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695747173080) (:by |bjmr3HZle) (:text |{})
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
                              |b $ %{} :Leaf (:at 1695747164217) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-snippet\n\ncomp-snippet \"\\\"defn f (a b)\\n  + a b\" $ {}\n")
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
                              |T $ %{} :Leaf (:at 1695747116571) (:by |bjmr3HZle) (:text |comp-snippet)
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
                              |j $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |{})
                                  |j $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:name)
                                      |j $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:book)
                                  |r $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:title)
                                      |j $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text "|\"Book")
                              |r $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |{})
                                  |j $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:name)
                                      |j $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:card)
                                  |r $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:title)
                                      |j $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text "|\"Card")
                              |v $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |{})
                                  |j $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:name)
                                      |j $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:pl)
                                  |r $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:title)
                                      |j $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text "|\"Programming language")
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
                              |b $ %{} :Leaf (:at 1695746687605) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-tabs\n\ncomp-tabs\n  {}\n    :selected (:selected state)\n    :style {}\n  []\n    &{} :name :book :title |Book\n    &{} :name :card :title |Card\n    &{} :name :pl :title \"|Programming language\"\n  fn (info d!)\n    println |selected info\n    d! cursor $ assoc state :selected $ :name info")
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
                                      |r $ %{} :Expr (:at 1592799489490) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1592799490295) (:by |bjmr3HZle) (:text |println)
                                          |b $ %{} :Leaf (:at 1592799506908) (:by |bjmr3HZle) (:text "|\"selected")
                                          |j $ %{} :Leaf (:at 1592799491598) (:by |bjmr3HZle) (:text |info)
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
                                                  |T $ %{} :Leaf (:at 1592799534390) (:by |bjmr3HZle) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1592799534808) (:by |bjmr3HZle) (:text |info)
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
                                      |b $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |{})
                                          |b $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:name)
                                              |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:book)
                                          |h $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:title)
                                              |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text "|\"书本")
                                      |h $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |{})
                                          |b $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:name)
                                              |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:card)
                                          |h $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:title)
                                              |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text "|\"纸牌")
                                      |l $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |{})
                                          |b $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:name)
                                              |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:pl)
                                          |h $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:title)
                                              |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text "|\"编程语言")
                                  |l $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |fn)
                                      |b $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |info)
                                          |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |d!)
                                      |h $ %{} :Expr (:at 1695746702875) (:by |bjmr3HZle)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |println)
                                          |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text "|\"selected")
                                          |h $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |info)
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
                                                  |T $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |:name)
                                                  |b $ %{} :Leaf (:at 1695746702875) (:by |bjmr3HZle) (:text |info)
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
                                                          |l $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |90)
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
                                                  |T $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |:name)
                                                  |b $ %{} :Leaf (:at 1695746705441) (:by |bjmr3HZle) (:text |info)
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
                                              |v $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |info)
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
                        |y $ %{} :Leaf (:at 1506676727755) (:by |root) (:text |<>)
                |y $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1506677014345) (:by |root) (:text |=<)
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
                      |j $ %{} :Leaf (:at 1519577263068) (:by |root) (:text "||which can be used with `ui/font-normal`. It's Hind fonts.")
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
                      |j $ %{} :Leaf (:at 1519577274524) (:by |root) (:text "||which can be used with `ui/font-fancy`. Josefin Sans is used here.")
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
                      |j $ %{} :Leaf (:at 1519577215158) (:by |root) (:text "||which can be used with `ui/font-code`.")
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
                              |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text "||Some text as description")
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
                                      |T $ %{} :Leaf (:at 1519835013501) (:by |root) (:text ||link)
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
                                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Yes)
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
                                  |b $ %{} :Leaf (:at 1671118674448) (:by |bjmr3HZle) (:text ||Yes)
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
                                  |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Yes)
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
                                  |b $ %{} :Leaf (:at 1671121290199) (:by |bjmr3HZle) (:text ||Yes)
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
                  |v $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:user-select)
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:no-select)
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
                          |j $ %{} :Expr (:at 1690724373876) (:by |bjmr3HZle)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1690724400234) (:by |bjmr3HZle) (:text |w-log)
                              |T $ %{} :Expr (:at 1506675837748) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |parse-address)
                                  |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |str)
                                      |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |.-pathname)
                                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |js/location)
                                      |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |.-search)
                                          |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |js/location)
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
                      |T $ %{} :Leaf (:at 1555608432129) (:by |bjmr3HZle) (:text |println)
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
              |s $ %{} :Expr (:at 1690724387103) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1690724387103) (:by |bjmr3HZle) (:text |if)
                  |b $ %{} :Leaf (:at 1690724387103) (:by |bjmr3HZle) (:text |config/dev?)
                  |h $ %{} :Expr (:at 1690724387103) (:by |bjmr3HZle)
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
              |y $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-app!)
                  |j $ %{} :Leaf (:at 1506676439089) (:by |root) (:text |render!)
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
                          |j $ %{} :Leaf (:at 1506676445444) (:by |root) (:text |render!)
              |yj $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-router!)
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
                                  |j $ %{} :Leaf (:at 1614696131060) (:by |bjmr3HZle) (:text |render!)
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
                          |j $ %{} :Leaf (:at 1506676489312) (:by |root) (:text |render!)
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
                  |T $ %{} :Leaf (:at 1506676457934) (:by |root) (:text |renderer)
              |v $ %{} :Expr (:at 1506675837748) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1506676460405) (:by |root) (:text |renderer)
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
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |nil)
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
  :ir $ {} (:package |respo-ui)
    :files $ {}
      |respo-ui.comp $ {}
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
                                                |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |item)
                                            |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |[])
                                                |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |idx)
                                                |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
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
                                                        |h $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |<>)
                                                            |b $ %{} :Expr (:at 1678305437314) (:by |bjmr3HZle)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |&map:get)
                                                                |b $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |item)
                                                                |h $ %{} :Leaf (:at 1678305437314) (:by |bjmr3HZle) (:text |:value)
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
            :code $ %{} :Expr (:at 1593161556909) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1593161560305) (:by |bjmr3HZle) (:text |defcomp)
                |j $ %{} :Leaf (:at 1593161556909) (:by |bjmr3HZle) (:text |comp-snippet)
                |r $ %{} :Expr (:at 1593161556909) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1593161566336) (:by |bjmr3HZle) (:text |text)
                    |j $ %{} :Leaf (:at 1593161567554) (:by |bjmr3HZle) (:text |styles)
                |v $ %{} :Expr (:at 1593161567991) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1593161568559) (:by |bjmr3HZle) (:text |div)
                    |j $ %{} :Expr (:at 1593161568734) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1593161569113) (:by |bjmr3HZle) (:text |{})
                        |f $ %{} :Expr (:at 1651248364126) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1651248366396) (:by |bjmr3HZle) (:text |:class-name)
                            |b $ %{} :Leaf (:at 1651248378515) (:by |bjmr3HZle) (:text |css-snippet)
                        |r $ %{} :Expr (:at 1593161579964) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1593161581563) (:by |bjmr3HZle) (:text |:style)
                            |j $ %{} :Leaf (:at 1593161584772) (:by |bjmr3HZle) (:text |styles)
                    |r $ %{} :Expr (:at 1593161962470) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1644509679567) (:by |bjmr3HZle) (:text |pre)
                        |j $ %{} :Expr (:at 1644509685930) (:by |bjmr3HZle)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1644509686908) (:by |bjmr3HZle) (:text |{})
                            |T $ %{} :Expr (:at 1644509687460) (:by |bjmr3HZle)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1644509691389) (:by |bjmr3HZle) (:text |:innerHTML)
                                |T $ %{} :Expr (:at 1644509721979) (:by |bjmr3HZle)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1644509722599) (:by |bjmr3HZle) (:text |generateHtml)
                                    |T $ %{} :Leaf (:at 1593161963758) (:by |bjmr3HZle) (:text |text)
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
                |v $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |list->)
                    |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |{})
                        |b $ %{} :Expr (:at 1651248083054) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1651248087603) (:by |bjmr3HZle) (:text |:class-name)
                            |b $ %{} :Expr (:at 1651248089742) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1651248089742) (:by |bjmr3HZle) (:text |if)
                                |b $ %{} :Expr (:at 1651248089742) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1651248089742) (:by |bjmr3HZle) (:text |:vertical?)
                                    |b $ %{} :Leaf (:at 1651248089742) (:by |bjmr3HZle) (:text |options)
                                |h $ %{} :Leaf (:at 1651248197750) (:by |bjmr3HZle) (:text |css/column)
                                |l $ %{} :Leaf (:at 1651248211154) (:by |bjmr3HZle) (:text |css/row)
                        |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:style)
                            |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |merge)
                                |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:padding)
                                        |j $ %{} :Leaf (:at 1645115696476) (:by |bjmr3HZle) (:text "|\"4px 16px")
                                    |r $ %{} :Expr (:at 1592800386993) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592800388420) (:by |bjmr3HZle) (:text |:width)
                                        |j $ %{} :Expr (:at 1592800389116) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1592800389837) (:by |bjmr3HZle) (:text |:width)
                                            |j $ %{} :Leaf (:at 1592800391265) (:by |bjmr3HZle) (:text |options)
                                |v $ %{} :Expr (:at 1592799814864) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799851231) (:by |bjmr3HZle) (:text |:style)
                                    |j $ %{} :Leaf (:at 1592799817864) (:by |bjmr3HZle) (:text |options)
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
                                |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |[])
                                    |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:name)
                                        |j $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |info)
                                    |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |div)
                                        |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |{})
                                            |b $ %{} :Expr (:at 1651248124487) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1651248129502) (:by |bjmr3HZle) (:text |:class-name)
                                                |b $ %{} :Leaf (:at 1651248132145) (:by |bjmr3HZle) (:text |css-tab)
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
                                                        |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |=)
                                                            |j $ %{} :Expr (:at 1592799780263) (:by |bjmr3HZle)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1592799780906) (:by |bjmr3HZle) (:text |:selected)
                                                                |j $ %{} :Leaf (:at 1592799782856) (:by |bjmr3HZle) (:text |options)
                                                            |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:name)
                                                                |j $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |info)
                                                        |r $ %{} :Expr (:at 1645115725212) (:by |bjmr3HZle)
                                                          :data $ {}
                                                            |D $ %{} :Leaf (:at 1645115726286) (:by |bjmr3HZle) (:text |merge)
                                                            |T $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |{})
                                                                |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:color)
                                                                    |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |hsl)
                                                                        |j $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |0)
                                                                        |r $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |0)
                                                                        |v $ %{} :Leaf (:at 1645115260786) (:by |bjmr3HZle) (:text |100)
                                                                |t $ %{} :Expr (:at 1645115214708) (:by |bjmr3HZle)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1645115250492) (:by |bjmr3HZle) (:text |:background-color)
                                                                    |b $ %{} :Expr (:at 1645115214708) (:by |bjmr3HZle)
                                                                      :data $ {}
                                                                        |T $ %{} :Leaf (:at 1645115214708) (:by |bjmr3HZle) (:text |hsl)
                                                                        |b $ %{} :Leaf (:at 1645115253934) (:by |bjmr3HZle) (:text |200)
                                                                        |h $ %{} :Leaf (:at 1645115256861) (:by |bjmr3HZle) (:text |80)
                                                                        |l $ %{} :Leaf (:at 1645115217015) (:by |bjmr3HZle) (:text |70)
                                                            |b $ %{} :Expr (:at 1645115726755) (:by |bjmr3HZle)
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
                                                        |j $ %{} :Leaf (:at 1592799311222) (:by |bjmr3HZle) (:text |info)
                                                        |r $ %{} :Leaf (:at 1592799313113) (:by |bjmr3HZle) (:text |d!)
                                        |r $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |<>)
                                            |j $ %{} :Expr (:at 1592799089998) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |:title)
                                                |j $ %{} :Leaf (:at 1592799089998) (:by |bjmr3HZle) (:text |info)
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
                |b $ %{} :Leaf (:at 1651248379072) (:by |bjmr3HZle) (:text |css-snippet)
                |h $ %{} :Expr (:at 1651248379072) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651248382234) (:by |bjmr3HZle) (:text |{})
                    |b $ %{} :Expr (:at 1651248382750) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651248383892) (:by |bjmr3HZle) (:text "|\"$0")
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
                                |b $ %{} :Leaf (:at 1651248385770) (:by |bjmr3HZle) (:text "|\"4px 6px")
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
      |respo-ui.comp.components $ {}
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
                                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                                |j $ %{} :Leaf (:at 1659199325773) (:by |bjmr3HZle) (:text ||https://github.com/Respo/notifier.calcit)
                                |r $ %{} :Leaf (:at 1574180829206) (:by |bjmr3HZle) (:text "|\"notifier")
                        |y $ %{} :Expr (:at 1592799129604) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1592799136287) (:by |bjmr3HZle) (:text |comp-demo-placeholder)
                        |yT $ %{} :Expr (:at 1592799320720) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1592799327228) (:by |bjmr3HZle) (:text |comp-demo-tabs)
                            |j $ %{} :Expr (:at 1592799385073) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1592799386314) (:by |bjmr3HZle) (:text |>>)
                                |j $ %{} :Leaf (:at 1592799387304) (:by |bjmr3HZle) (:text |states)
                                |r $ %{} :Leaf (:at 1592799388733) (:by |bjmr3HZle) (:text |:tabs)
                        |z $ %{} :Expr (:at 1678209524077) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1678209527829) (:by |bjmr3HZle) (:text |comp-demo-attributes)
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
                    |e $ %{} :Expr (:at 1678210309018) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1678210314234) (:by |bjmr3HZle) (:text |div)
                        |b $ %{} :Expr (:at 1678210314530) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1678210314812) (:by |bjmr3HZle) (:text |{})
                    |f $ %{} :Expr (:at 1678210316522) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1678210318274) (:by |bjmr3HZle) (:text |=<)
                        |b $ %{} :Leaf (:at 1678210318871) (:by |bjmr3HZle) (:text |nil)
                        |h $ %{} :Leaf (:at 1678210320980) (:by |bjmr3HZle) (:text |40)
                    |h $ %{} :Expr (:at 1678209551700) (:by |bjmr3HZle)
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
                                    |b $ %{} :Expr (:at 1678209559425) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1678209559798) (:by |bjmr3HZle) (:text |{})
                                        |b $ %{} :Expr (:at 1678209560108) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1678209562542) (:by |bjmr3HZle) (:text |:label)
                                            |b $ %{} :Leaf (:at 1678209567826) (:by |bjmr3HZle) (:text "|\"DEMO")
                                        |h $ %{} :Expr (:at 1678209569161) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1678209570787) (:by |bjmr3HZle) (:text |:value)
                                            |b $ %{} :Leaf (:at 1678209577104) (:by |bjmr3HZle) (:text "|\"content")
                                    |h $ %{} :Expr (:at 1678209559425) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1678209559798) (:by |bjmr3HZle) (:text |{})
                                        |b $ %{} :Expr (:at 1678209560108) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1678209562542) (:by |bjmr3HZle) (:text |:label)
                                            |b $ %{} :Leaf (:at 1678209586773) (:by |bjmr3HZle) (:text "|\"DEMO 2")
                                        |h $ %{} :Expr (:at 1678209569161) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1678209570787) (:by |bjmr3HZle) (:text |:value)
                                            |b $ %{} :Leaf (:at 1678209589471) (:by |bjmr3HZle) (:text "|\"content 2")
                                    |l $ %{} :Expr (:at 1678209559425) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1678209559798) (:by |bjmr3HZle) (:text |{})
                                        |b $ %{} :Expr (:at 1678209560108) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1678209562542) (:by |bjmr3HZle) (:text |:label)
                                            |b $ %{} :Leaf (:at 1678209586773) (:by |bjmr3HZle) (:text "|\"DEMO 2")
                                        |h $ %{} :Expr (:at 1678209569161) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1678209570787) (:by |bjmr3HZle) (:text |:value)
                                            |b $ %{} :Leaf (:at 1678209589471) (:by |bjmr3HZle) (:text "|\"content 2")
                                        |l $ %{} :Expr (:at 1678209917817) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1678209918173) (:by |bjmr3HZle) (:text |:span)
                                            |b $ %{} :Leaf (:at 1678209918752) (:by |bjmr3HZle) (:text |2)
                                    |o $ %{} :Expr (:at 1678209559425) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1678209559798) (:by |bjmr3HZle) (:text |{})
                                        |b $ %{} :Expr (:at 1678209560108) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1678209562542) (:by |bjmr3HZle) (:text |:label)
                                            |b $ %{} :Leaf (:at 1678209586773) (:by |bjmr3HZle) (:text "|\"DEMO 2")
                                        |h $ %{} :Expr (:at 1678209569161) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1678209570787) (:by |bjmr3HZle) (:text |:value)
                                            |b $ %{} :Leaf (:at 1678209589471) (:by |bjmr3HZle) (:text "|\"content 2")
                                    |q $ %{} :Expr (:at 1678209559425) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1678209559798) (:by |bjmr3HZle) (:text |{})
                                        |b $ %{} :Expr (:at 1678209560108) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1678209562542) (:by |bjmr3HZle) (:text |:label)
                                            |b $ %{} :Leaf (:at 1678209586773) (:by |bjmr3HZle) (:text "|\"DEMO 2")
                                        |h $ %{} :Expr (:at 1678209569161) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1678209570787) (:by |bjmr3HZle) (:text |:value)
                                            |b $ %{} :Leaf (:at 1678209589471) (:by |bjmr3HZle) (:text "|\"content 2")
                    |j $ %{} :Expr (:at 1678305630521) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1678305631583) (:by |bjmr3HZle) (:text |=<)
                        |b $ %{} :Leaf (:at 1678305632264) (:by |bjmr3HZle) (:text |nil)
                        |h $ %{} :Leaf (:at 1678305636864) (:by |bjmr3HZle) (:text |8)
                    |l $ %{} :Expr (:at 1678210419837) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1678210419837) (:by |bjmr3HZle) (:text |comp-snippet)
                        |b $ %{} :Leaf (:at 1678210452723) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-attributes\n\n\ncomp-attributes $ {}\n  :items $ []\n    {} (:label \"\\\"DEMO\")\n      :value \"\\\"content\"\n    {} (:label \"\\\"DEMO 2\")\n      :value \"\\\"content 2\"\n    {} (:label \"\\\"DEMO 2\")\n      :value \"\\\"content 2\"\n      :span 2\n    {} (:label \"\\\"DEMO 2\")\n      :value \"\\\"content 2\"\n    {} (:label \"\\\"DEMO 2\")\n      :value \"\\\"content 2\"\n\n")
                        |h $ %{} :Expr (:at 1678210419837) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1678210419837) (:by |bjmr3HZle) (:text |{})
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
                    |v $ %{} :Expr (:at 1592799165509) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1592799167862) (:by |bjmr3HZle) (:text |comp-placeholder)
                        |j $ %{} :Leaf (:at 1592799173244) (:by |bjmr3HZle) (:text "|\"This is a demo")
                    |x $ %{} :Expr (:at 1592799165509) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1592799167862) (:by |bjmr3HZle) (:text |comp-placeholder)
                        |j $ %{} :Leaf (:at 1592799239882) (:by |bjmr3HZle) (:text "|\"中文 Demo")
                    |y $ %{} :Expr (:at 1592799908469) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1592799917007) (:by |bjmr3HZle) (:text |comp-snippet)
                        |j $ %{} :Leaf (:at 1644509526507) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-placeholder\n\ncomp-placeholder \"|demo\"\ncomp-placeholder \"|中文\"")
                        |r $ %{} :Expr (:at 1593161810479) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1593161810223) (:by |bjmr3HZle) (:text |{})
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
                                |j $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:name)
                                        |j $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:book)
                                    |r $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:title)
                                        |j $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text "|\"Book")
                                |r $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:name)
                                        |j $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:card)
                                    |r $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:title)
                                        |j $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text "|\"Card")
                                |v $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:name)
                                        |j $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:pl)
                                    |r $ %{} :Expr (:at 1592800305127) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text |:title)
                                        |j $ %{} :Leaf (:at 1592800305127) (:by |bjmr3HZle) (:text "|\"Programming language")
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
                        |v $ %{} :Expr (:at 1592799375191) (:by |bjmr3HZle)
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
                                |r $ %{} :Expr (:at 1592799489490) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799490295) (:by |bjmr3HZle) (:text |println)
                                    |b $ %{} :Leaf (:at 1592799506908) (:by |bjmr3HZle) (:text "|\"selected")
                                    |j $ %{} :Leaf (:at 1592799491598) (:by |bjmr3HZle) (:text |info)
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
                                            |T $ %{} :Leaf (:at 1592799534390) (:by |bjmr3HZle) (:text |:name)
                                            |j $ %{} :Leaf (:at 1592799534808) (:by |bjmr3HZle) (:text |info)
                        |x $ %{} :Expr (:at 1592799802476) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1592799378850) (:by |bjmr3HZle) (:text |comp-tabs)
                            |j $ %{} :Expr (:at 1592799804420) (:by |bjmr3HZle)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1592799804919) (:by |bjmr3HZle) (:text |{})
                                |T $ %{} :Expr (:at 1592799799514) (:by |bjmr3HZle)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1592799800195) (:by |bjmr3HZle) (:text |:selected)
                                    |T $ %{} :Expr (:at 1592799413061) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799414765) (:by |bjmr3HZle) (:text |:selected)
                                        |j $ %{} :Leaf (:at 1592799415422) (:by |bjmr3HZle) (:text |state)
                            |r $ %{} :Expr (:at 1592799415976) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1592799417254) (:by |bjmr3HZle) (:text |[])
                                |j $ %{} :Expr (:at 1592799417612) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799418000) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1592799429182) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799430854) (:by |bjmr3HZle) (:text |:name)
                                        |j $ %{} :Leaf (:at 1592799449178) (:by |bjmr3HZle) (:text |:book)
                                    |r $ %{} :Expr (:at 1592799451527) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799453838) (:by |bjmr3HZle) (:text |:title)
                                        |j $ %{} :Leaf (:at 1592799553421) (:by |bjmr3HZle) (:text "|\"书本")
                                |r $ %{} :Expr (:at 1592799417612) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799418000) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1592799429182) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799430854) (:by |bjmr3HZle) (:text |:name)
                                        |j $ %{} :Leaf (:at 1592799460825) (:by |bjmr3HZle) (:text |:card)
                                    |r $ %{} :Expr (:at 1592799451527) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799453838) (:by |bjmr3HZle) (:text |:title)
                                        |j $ %{} :Leaf (:at 1592799557381) (:by |bjmr3HZle) (:text "|\"纸牌")
                                |v $ %{} :Expr (:at 1592799417612) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799418000) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1592799429182) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799430854) (:by |bjmr3HZle) (:text |:name)
                                        |j $ %{} :Leaf (:at 1592799474441) (:by |bjmr3HZle) (:text |:pl)
                                    |r $ %{} :Expr (:at 1592799451527) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799453838) (:by |bjmr3HZle) (:text |:title)
                                        |j $ %{} :Leaf (:at 1592799561119) (:by |bjmr3HZle) (:text "|\"编程语言")
                            |v $ %{} :Expr (:at 1592799483857) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1592799484222) (:by |bjmr3HZle) (:text |fn)
                                |j $ %{} :Expr (:at 1592799484862) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799487032) (:by |bjmr3HZle) (:text |info)
                                    |j $ %{} :Leaf (:at 1592799489123) (:by |bjmr3HZle) (:text |d!)
                                |r $ %{} :Expr (:at 1592799489490) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799490295) (:by |bjmr3HZle) (:text |println)
                                    |b $ %{} :Leaf (:at 1592799506908) (:by |bjmr3HZle) (:text "|\"selected")
                                    |j $ %{} :Leaf (:at 1592799491598) (:by |bjmr3HZle) (:text |info)
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
                                            |T $ %{} :Leaf (:at 1592799534390) (:by |bjmr3HZle) (:text |:name)
                                            |j $ %{} :Leaf (:at 1592799534808) (:by |bjmr3HZle) (:text |info)
                        |y $ %{} :Expr (:at 1592799827186) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |comp-tabs)
                            |j $ %{} :Expr (:at 1592799827186) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |{})
                                |j $ %{} :Expr (:at 1592799827186) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |:selected)
                                    |j $ %{} :Expr (:at 1592799827186) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |:selected)
                                        |j $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |state)
                                |r $ %{} :Expr (:at 1592799828739) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799830284) (:by |bjmr3HZle) (:text |:style)
                                    |j $ %{} :Expr (:at 1592799830508) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799830883) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1592799831111) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1592799832853) (:by |bjmr3HZle) (:text |:border-bottom)
                                            |j $ %{} :Expr (:at 1592799834987) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1592799836702) (:by |bjmr3HZle) (:text |str)
                                                |j $ %{} :Leaf (:at 1592799839108) (:by |bjmr3HZle) (:text "|\"1px solid ")
                                                |r $ %{} :Expr (:at 1592799840027) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1592799841790) (:by |bjmr3HZle) (:text |hsl)
                                                    |j $ %{} :Leaf (:at 1592799842037) (:by |bjmr3HZle) (:text |0)
                                                    |r $ %{} :Leaf (:at 1592799842309) (:by |bjmr3HZle) (:text |0)
                                                    |v $ %{} :Leaf (:at 1592799842922) (:by |bjmr3HZle) (:text |90)
                            |p $ %{} :Leaf (:at 1592800309244) (:by |bjmr3HZle) (:text |en-tabs)
                            |v $ %{} :Expr (:at 1592799827186) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |fn)
                                |j $ %{} :Expr (:at 1592799827186) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |info)
                                    |j $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |d!)
                                |r $ %{} :Expr (:at 1592799827186) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |println)
                                    |j $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text "|\"selected")
                                    |r $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |info)
                                |v $ %{} :Expr (:at 1592799827186) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |d!)
                                    |j $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |cursor)
                                    |r $ %{} :Expr (:at 1592799827186) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |assoc)
                                        |j $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |state)
                                        |r $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |:selected)
                                        |v $ %{} :Expr (:at 1592799827186) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |:name)
                                            |j $ %{} :Leaf (:at 1592799827186) (:by |bjmr3HZle) (:text |info)
                        |yD $ %{} :Expr (:at 1593161910643) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1593161911913) (:by |bjmr3HZle) (:text |=<)
                            |b $ %{} :Leaf (:at 1593161915099) (:by |bjmr3HZle) (:text |nil)
                            |j $ %{} :Leaf (:at 1593161912403) (:by |bjmr3HZle) (:text |8)
                        |yT $ %{} :Expr (:at 1592800087265) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1592800090289) (:by |bjmr3HZle) (:text |comp-snippet)
                            |j $ %{} :Leaf (:at 1644509365896) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-tabs\n\ncomp-tabs\n  {}\n    :selected (:selected state)\n    :style {}\n  []\n    &{} :name :book :title |Book\n    &{} :name :card :title |Card\n    &{} :name :pl :title \"|Programming language\"\n  fn (info d!)\n    println |selected info\n    d! cursor $ assoc state :selected $ :name info")
                            |r $ %{} :Expr (:at 1593161796839) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1593161797227) (:by |bjmr3HZle) (:text |{})
                        |yj $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
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
                                        |v $ %{} :Expr (:at 1592800316773) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |:name)
                                            |j $ %{} :Leaf (:at 1592800316773) (:by |bjmr3HZle) (:text |info)
                        |yr $ %{} :Expr (:at 1592800422408) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1592800422408) (:by |bjmr3HZle) (:text |comp-snippet)
                            |j $ %{} :Leaf (:at 1644509416916) (:by |bjmr3HZle) (:text "|\"respo-ui.comp/comp-tabs\n\ncomp-tabs\n  &{} :selected (:selected state) :style ({}) :vertical? true :width 200\n  , tabs\n  fn (info d!)")
                            |r $ %{} :Expr (:at 1593161804902) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1593161804322) (:by |bjmr3HZle) (:text |{})
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
                            |v $ %{} :Expr (:at 1592799625423) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1592799628686) (:by |bjmr3HZle) (:text |:font-family)
                                |j $ %{} :Leaf (:at 1592799631938) (:by |bjmr3HZle) (:text |ui/font-fancy)
                            |x $ %{} :Expr (:at 1592799658198) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1592799658988) (:by |bjmr3HZle) (:text |:color)
                                |j $ %{} :Expr (:at 1592799659216) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1592799659564) (:by |bjmr3HZle) (:text |hsl)
                                    |j $ %{} :Leaf (:at 1592799660441) (:by |bjmr3HZle) (:text |0)
                                    |r $ %{} :Leaf (:at 1592799661669) (:by |bjmr3HZle) (:text |0)
                                    |v $ %{} :Leaf (:at 1592799665040) (:by |bjmr3HZle) (:text |70)
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
                          |v $ %{} :Leaf (:at 1593161780323) (:by |bjmr3HZle) (:text |comp-snippet)
                          |x $ %{} :Leaf (:at 1593170668443) (:by |bjmr3HZle) (:text |comp-button)
                          |y $ %{} :Leaf (:at 1593190240656) (:by |bjmr3HZle) (:text |comp-link)
                          |z $ %{} :Leaf (:at 1678209543653) (:by |bjmr3HZle) (:text |comp-attributes)
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
      |respo-ui.comp.container $ {}
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
                                |s $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |:lay-out)
                                    |b $ %{} :Expr (:at 1690724698069) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |comp-lay-out-page)
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
                                            |T $ %{} :Leaf (:at 1690724698069) (:by |bjmr3HZle) (:text |pr-str)
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
                          |y $ %{} :Leaf (:at 1506676727755) (:by |root) (:text |<>)
                  |y $ %{} :Expr (:at 1506675837748) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1506675837748) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1506677014345) (:by |root) (:text |=<)
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
                  |yyr $ %{} :Expr (:at 1600160463727) (:by |bjmr3HZle)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1600160463727) (:by |bjmr3HZle) (:text |respo-ui.comp.lay-out-page)
                      |r $ %{} :Leaf (:at 1600160463727) (:by |bjmr3HZle) (:text |:refer)
                      |v $ %{} :Expr (:at 1600160463727) (:by |bjmr3HZle)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1600160463727) (:by |bjmr3HZle) (:text |comp-lay-out-page)
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
      |respo-ui.comp.fonts-page $ {}
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
                        |j $ %{} :Leaf (:at 1519577263068) (:by |root) (:text "||which can be used with `ui/font-normal`. It's Hind fonts.")
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
                        |j $ %{} :Leaf (:at 1519577274524) (:by |root) (:text "||which can be used with `ui/font-fancy`. Josefin Sans is used here.")
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
                        |j $ %{} :Leaf (:at 1519577215158) (:by |root) (:text "||which can be used with `ui/font-code`.")
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
      |respo-ui.comp.home $ {}
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
      |respo-ui.comp.lay-out-page $ {}
        :configs $ {}
        :defs $ {}
          |comp-lay-out-page $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600160418859) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600160433038) (:by |bjmr3HZle) (:text |defcomp)
                |j $ %{} :Leaf (:at 1600160418859) (:by |bjmr3HZle) (:text |comp-lay-out-page)
                |r $ %{} :Expr (:at 1600160418859) (:by |bjmr3HZle)
                  :data $ {}
                |v $ %{} :Expr (:at 1600160433977) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600160435769) (:by |bjmr3HZle) (:text |div)
                    |j $ %{} :Expr (:at 1600160435997) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600160436304) (:by |bjmr3HZle) (:text |{})
                    |p $ %{} :Expr (:at 1600253677128) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600253683329) (:by |bjmr3HZle) (:text |<>)
                        |j $ %{} :Leaf (:at 1600253689200) (:by |bjmr3HZle) (:text "|\"Flex layout")
                        |r $ %{} :Leaf (:at 1600253692283) (:by |bjmr3HZle) (:text |style-title)
                    |w $ %{} :Expr (:at 1600160879562) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600160882174) (:by |bjmr3HZle) (:text |lay-out)
                        |j $ %{} :Expr (:at 1600160882969) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600160884808) (:by |bjmr3HZle) (:text |{})
                            |j $ %{} :Expr (:at 1600160885496) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600160888778) (:by |bjmr3HZle) (:text |:type)
                                |j $ %{} :Leaf (:at 1600161153686) (:by |bjmr3HZle) (:text |:flex)
                            |k $ %{} :Expr (:at 1600329469674) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600329470883) (:by |bjmr3HZle) (:text |:style)
                                |j $ %{} :Expr (:at 1600329471185) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600329471487) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1600329471730) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329476184) (:by |bjmr3HZle) (:text |:border)
                                        |j $ %{} :Expr (:at 1600329476401) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329477065) (:by |bjmr3HZle) (:text |str)
                                            |j $ %{} :Leaf (:at 1600329483967) (:by |bjmr3HZle) (:text "|\"1px solid ")
                                            |r $ %{} :Expr (:at 1600329484785) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1600329485240) (:by |bjmr3HZle) (:text |hsl)
                                                |j $ %{} :Leaf (:at 1600329486185) (:by |bjmr3HZle) (:text |0)
                                                |r $ %{} :Leaf (:at 1600329486409) (:by |bjmr3HZle) (:text |0)
                                                |x $ %{} :Leaf (:at 1600329486995) (:by |bjmr3HZle) (:text |80)
                            |l $ %{} :Expr (:at 1600164402678) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600164456208) (:by |bjmr3HZle) (:text |:layout)
                                |j $ %{} :Leaf (:at 1600242359752) (:by |bjmr3HZle) (:text |:row)
                            |p $ %{} :Expr (:at 1600166371040) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600166373656) (:by |bjmr3HZle) (:text |:gap)
                                |j $ %{} :Leaf (:at 1600166375760) (:by |bjmr3HZle) (:text |10)
                            |r $ %{} :Expr (:at 1600160893893) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600162317017) (:by |bjmr3HZle) (:text |:items)
                                |j $ %{} :Expr (:at 1600160909628) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600160910317) (:by |bjmr3HZle) (:text |[])
                                    |j $ %{} :Expr (:at 1600329514247) (:by |bjmr3HZle)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1600329516004) (:by |bjmr3HZle) (:text |{})
                                        |L $ %{} :Expr (:at 1600329516825) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329520021) (:by |bjmr3HZle) (:text |:type)
                                            |j $ %{} :Leaf (:at 1600329521023) (:by |bjmr3HZle) (:text |:flex)
                                        |P $ %{} :Expr (:at 1600329531191) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329533265) (:by |bjmr3HZle) (:text |:layout)
                                            |j $ %{} :Leaf (:at 1600329536118) (:by |bjmr3HZle) (:text |:column)
                                        |R $ %{} :Expr (:at 1600329537754) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329539657) (:by |bjmr3HZle) (:text |:gap)
                                            |j $ %{} :Leaf (:at 1600329540697) (:by |bjmr3HZle) (:text |4)
                                        |T $ %{} :Expr (:at 1600329524473) (:by |bjmr3HZle)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1600329527094) (:by |bjmr3HZle) (:text |:items)
                                            |T $ %{} :Expr (:at 1600329528884) (:by |bjmr3HZle)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1600329529574) (:by |bjmr3HZle) (:text |[])
                                                |T $ %{} :Expr (:at 1600160927146) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1600160927514) (:by |bjmr3HZle) (:text |{})
                                                    |j $ %{} :Expr (:at 1600160927788) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1600161203010) (:by |bjmr3HZle) (:text |:type)
                                                        |j $ %{} :Leaf (:at 1600161204030) (:by |bjmr3HZle) (:text |:item)
                                                    |r $ %{} :Expr (:at 1600160934845) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1600161115530) (:by |bjmr3HZle) (:text |:fill)
                                                        |j $ %{} :Leaf (:at 1600160941762) (:by |bjmr3HZle) (:text |:a)
                                                |j $ %{} :Expr (:at 1600160927146) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1600160927514) (:by |bjmr3HZle) (:text |{})
                                                    |j $ %{} :Expr (:at 1600160927788) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1600161203010) (:by |bjmr3HZle) (:text |:type)
                                                        |j $ %{} :Leaf (:at 1600161204030) (:by |bjmr3HZle) (:text |:item)
                                                    |r $ %{} :Expr (:at 1600160934845) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1600161115530) (:by |bjmr3HZle) (:text |:fill)
                                                        |j $ %{} :Leaf (:at 1600160941762) (:by |bjmr3HZle) (:text |:a)
                                    |r $ %{} :Expr (:at 1600160927146) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600160927514) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600160927788) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600160933591) (:by |bjmr3HZle) (:text |:type)
                                            |j $ %{} :Leaf (:at 1600161200885) (:by |bjmr3HZle) (:text |:item)
                                        |r $ %{} :Expr (:at 1600160934845) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600161117784) (:by |bjmr3HZle) (:text |:fill)
                                            |j $ %{} :Leaf (:at 1600160948612) (:by |bjmr3HZle) (:text |:b)
                                    |v $ %{} :Expr (:at 1600160927146) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600160927514) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600160927788) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600160933591) (:by |bjmr3HZle) (:text |:type)
                                            |j $ %{} :Leaf (:at 1600161198901) (:by |bjmr3HZle) (:text |:item)
                                        |r $ %{} :Expr (:at 1600160934845) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600161118589) (:by |bjmr3HZle) (:text |:fill)
                                            |j $ %{} :Leaf (:at 1600160953319) (:by |bjmr3HZle) (:text |:c)
                        |r $ %{} :Expr (:at 1600161226021) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600161226304) (:by |bjmr3HZle) (:text |{})
                            |b $ %{} :Expr (:at 1600163974056) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600163981952) (:by |bjmr3HZle) (:text |:a)
                                |j $ %{} :Expr (:at 1600329850355) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610699644439) (:by |bjmr3HZle) (:text |\)
                                    |j $ %{} :Leaf (:at 1600329850355) (:by |bjmr3HZle) (:text |div)
                                    |r $ %{} :Expr (:at 1600329850355) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329850355) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600329850355) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329850355) (:by |bjmr3HZle) (:text |:style)
                                            |j $ %{} :Leaf (:at 1600329850355) (:by |bjmr3HZle) (:text |%)
                                    |v $ %{} :Expr (:at 1600329850355) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329850355) (:by |bjmr3HZle) (:text |<>)
                                        |j $ %{} :Leaf (:at 1600329850355) (:by |bjmr3HZle) (:text "|\"TODO A")
                            |f $ %{} :Expr (:at 1600163974056) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600230767686) (:by |bjmr3HZle) (:text |:b)
                                |j $ %{} :Expr (:at 1600329861498) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610699646479) (:by |bjmr3HZle) (:text |\)
                                    |j $ %{} :Leaf (:at 1600329861498) (:by |bjmr3HZle) (:text |div)
                                    |r $ %{} :Expr (:at 1600329861498) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329861498) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600329861498) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329861498) (:by |bjmr3HZle) (:text |:style)
                                            |j $ %{} :Leaf (:at 1600329861498) (:by |bjmr3HZle) (:text |%)
                                    |v $ %{} :Expr (:at 1600329861498) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329861498) (:by |bjmr3HZle) (:text |<>)
                                        |j $ %{} :Leaf (:at 1600329861498) (:by |bjmr3HZle) (:text "|\"TODO BB")
                            |j $ %{} :Expr (:at 1600161725008) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600240801163) (:by |bjmr3HZle) (:text |:c)
                                |j $ %{} :Expr (:at 1600329869873) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610699648524) (:by |bjmr3HZle) (:text |\)
                                    |j $ %{} :Leaf (:at 1600329869873) (:by |bjmr3HZle) (:text |div)
                                    |r $ %{} :Expr (:at 1600329869873) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329869873) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600329869873) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329869873) (:by |bjmr3HZle) (:text |:style)
                                            |j $ %{} :Leaf (:at 1600329869873) (:by |bjmr3HZle) (:text |%)
                                    |v $ %{} :Expr (:at 1600329869873) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329869873) (:by |bjmr3HZle) (:text |<>)
                                        |j $ %{} :Leaf (:at 1600329869873) (:by |bjmr3HZle) (:text "|\"TODO CCC")
                    |w5 $ %{} :Expr (:at 1600253721095) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600253721095) (:by |bjmr3HZle) (:text |<>)
                        |j $ %{} :Leaf (:at 1600253725895) (:by |bjmr3HZle) (:text "|\"Flex flow layout")
                        |r $ %{} :Leaf (:at 1600253721095) (:by |bjmr3HZle) (:text |style-title)
                    |wD $ %{} :Expr (:at 1600160879562) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600160882174) (:by |bjmr3HZle) (:text |lay-out)
                        |j $ %{} :Expr (:at 1600160882969) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600160884808) (:by |bjmr3HZle) (:text |{})
                            |j $ %{} :Expr (:at 1600160885496) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600160888778) (:by |bjmr3HZle) (:text |:type)
                                |j $ %{} :Leaf (:at 1600161153686) (:by |bjmr3HZle) (:text |:flex)
                            |k $ %{} :Expr (:at 1600329497439) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600329497439) (:by |bjmr3HZle) (:text |:style)
                                |j $ %{} :Expr (:at 1600329497439) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600329497439) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1600329497439) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329497439) (:by |bjmr3HZle) (:text |:border)
                                        |j $ %{} :Expr (:at 1600329497439) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329497439) (:by |bjmr3HZle) (:text |str)
                                            |j $ %{} :Leaf (:at 1600329497439) (:by |bjmr3HZle) (:text "|\"1px solid ")
                                            |r $ %{} :Expr (:at 1600329497439) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1600329497439) (:by |bjmr3HZle) (:text |hsl)
                                                |j $ %{} :Leaf (:at 1600329497439) (:by |bjmr3HZle) (:text |0)
                                                |r $ %{} :Leaf (:at 1600329497439) (:by |bjmr3HZle) (:text |0)
                                                |v $ %{} :Leaf (:at 1600329497439) (:by |bjmr3HZle) (:text |80)
                            |l $ %{} :Expr (:at 1600164402678) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600164456208) (:by |bjmr3HZle) (:text |:layout)
                                |j $ %{} :Leaf (:at 1600249942707) (:by |bjmr3HZle) (:text |:flow)
                            |p $ %{} :Expr (:at 1600166371040) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600166373656) (:by |bjmr3HZle) (:text |:gap)
                                |j $ %{} :Expr (:at 1600249975770) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600249976303) (:by |bjmr3HZle) (:text |[])
                                    |j $ %{} :Leaf (:at 1600249977114) (:by |bjmr3HZle) (:text |4)
                                    |r $ %{} :Leaf (:at 1600249977431) (:by |bjmr3HZle) (:text |4)
                            |r $ %{} :Expr (:at 1600160893893) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600162317017) (:by |bjmr3HZle) (:text |:items)
                                |j $ %{} :Expr (:at 1600160909628) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600160910317) (:by |bjmr3HZle) (:text |[])
                                    |j $ %{} :Expr (:at 1600160927146) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600160927514) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600160927788) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600161203010) (:by |bjmr3HZle) (:text |:type)
                                            |j $ %{} :Leaf (:at 1600161204030) (:by |bjmr3HZle) (:text |:item)
                                        |r $ %{} :Expr (:at 1600160934845) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600161115530) (:by |bjmr3HZle) (:text |:fill)
                                            |j $ %{} :Leaf (:at 1600160941762) (:by |bjmr3HZle) (:text |:a)
                                    |r $ %{} :Expr (:at 1600160927146) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600160927514) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600160927788) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600160933591) (:by |bjmr3HZle) (:text |:type)
                                            |j $ %{} :Leaf (:at 1600161200885) (:by |bjmr3HZle) (:text |:item)
                                        |r $ %{} :Expr (:at 1600160934845) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600161117784) (:by |bjmr3HZle) (:text |:fill)
                                            |j $ %{} :Leaf (:at 1600160948612) (:by |bjmr3HZle) (:text |:b)
                                    |v $ %{} :Expr (:at 1600160927146) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600160927514) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600160927788) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600160933591) (:by |bjmr3HZle) (:text |:type)
                                            |j $ %{} :Leaf (:at 1600161198901) (:by |bjmr3HZle) (:text |:item)
                                        |r $ %{} :Expr (:at 1600160934845) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600161118589) (:by |bjmr3HZle) (:text |:fill)
                                            |j $ %{} :Leaf (:at 1600160953319) (:by |bjmr3HZle) (:text |:c)
                        |r $ %{} :Expr (:at 1600161226021) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600161226304) (:by |bjmr3HZle) (:text |{})
                            |b $ %{} :Expr (:at 1600163974056) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600163981952) (:by |bjmr3HZle) (:text |:a)
                                |j $ %{} :Expr (:at 1600329878831) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610699652291) (:by |bjmr3HZle) (:text |\)
                                    |j $ %{} :Leaf (:at 1600329878831) (:by |bjmr3HZle) (:text |div)
                                    |r $ %{} :Expr (:at 1600329878831) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329878831) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600329878831) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329878831) (:by |bjmr3HZle) (:text |:style)
                                            |j $ %{} :Leaf (:at 1600329878831) (:by |bjmr3HZle) (:text |%)
                                    |v $ %{} :Expr (:at 1600329878831) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329878831) (:by |bjmr3HZle) (:text |<>)
                                        |j $ %{} :Leaf (:at 1600329878831) (:by |bjmr3HZle) (:text "|\"TODO A")
                            |f $ %{} :Expr (:at 1600163974056) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600230767686) (:by |bjmr3HZle) (:text |:b)
                                |j $ %{} :Expr (:at 1600329880921) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610699653910) (:by |bjmr3HZle) (:text |\)
                                    |j $ %{} :Leaf (:at 1600329880921) (:by |bjmr3HZle) (:text |div)
                                    |r $ %{} :Expr (:at 1600329880921) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329880921) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600329880921) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329880921) (:by |bjmr3HZle) (:text |:style)
                                            |j $ %{} :Leaf (:at 1600329880921) (:by |bjmr3HZle) (:text |%)
                                    |v $ %{} :Expr (:at 1600329880921) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329880921) (:by |bjmr3HZle) (:text |<>)
                                        |j $ %{} :Leaf (:at 1600329883759) (:by |bjmr3HZle) (:text "|\"TODO BB")
                            |j $ %{} :Expr (:at 1600161725008) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600240801163) (:by |bjmr3HZle) (:text |:c)
                                |j $ %{} :Expr (:at 1600329885233) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610699655467) (:by |bjmr3HZle) (:text |\)
                                    |j $ %{} :Leaf (:at 1600329885233) (:by |bjmr3HZle) (:text |div)
                                    |r $ %{} :Expr (:at 1600329885233) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329885233) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600329885233) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329885233) (:by |bjmr3HZle) (:text |:style)
                                            |j $ %{} :Leaf (:at 1600329885233) (:by |bjmr3HZle) (:text |%)
                                    |v $ %{} :Expr (:at 1600329885233) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329885233) (:by |bjmr3HZle) (:text |<>)
                                        |j $ %{} :Leaf (:at 1600329888207) (:by |bjmr3HZle) (:text "|\"TODO CCC")
                    |wE $ %{} :Expr (:at 1600253766021) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600253766021) (:by |bjmr3HZle) (:text |<>)
                        |j $ %{} :Leaf (:at 1600253766021) (:by |bjmr3HZle) (:text "|\"Flex layout")
                        |r $ %{} :Leaf (:at 1600253766021) (:by |bjmr3HZle) (:text |style-title)
                    |wF $ %{} :Expr (:at 1600253761575) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |lay-out)
                        |j $ %{} :Expr (:at 1600253761575) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |{})
                            |j $ %{} :Expr (:at 1600253761575) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |:type)
                                |j $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |:list)
                            |n $ %{} :Expr (:at 1600329502129) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600329502129) (:by |bjmr3HZle) (:text |:style)
                                |j $ %{} :Expr (:at 1600329502129) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600329502129) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1600329502129) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329502129) (:by |bjmr3HZle) (:text |:border)
                                        |j $ %{} :Expr (:at 1600329502129) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329502129) (:by |bjmr3HZle) (:text |str)
                                            |j $ %{} :Leaf (:at 1600329502129) (:by |bjmr3HZle) (:text "|\"1px solid ")
                                            |r $ %{} :Expr (:at 1600329502129) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1600329502129) (:by |bjmr3HZle) (:text |hsl)
                                                |j $ %{} :Leaf (:at 1600329502129) (:by |bjmr3HZle) (:text |0)
                                                |r $ %{} :Leaf (:at 1600329502129) (:by |bjmr3HZle) (:text |0)
                                                |v $ %{} :Leaf (:at 1600329502129) (:by |bjmr3HZle) (:text |80)
                            |r $ %{} :Expr (:at 1600253761575) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |:layout)
                                |j $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |:column)
                            |v $ %{} :Expr (:at 1600253761575) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |:size)
                                |j $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |4)
                            |x $ %{} :Expr (:at 1600253761575) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |:gap)
                                |j $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |10)
                        |r $ %{} :Expr (:at 1600253761575) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |fn)
                            |j $ %{} :Expr (:at 1600253761575) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |idx)
                                |j $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |styles)
                                |r $ %{} :Leaf (:at 1614696452595) (:by |bjmr3HZle) (:text |?)
                                |v $ %{} :Leaf (:at 1614696454964) (:by |bjmr3HZle) (:text |arg)
                            |r $ %{} :Expr (:at 1600330545786) (:by |bjmr3HZle)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1600330546445) (:by |bjmr3HZle) (:text |div)
                                |L $ %{} :Expr (:at 1600330547065) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600330547372) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1600330547600) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600330548390) (:by |bjmr3HZle) (:text |:style)
                                        |j $ %{} :Leaf (:at 1600330549594) (:by |bjmr3HZle) (:text |styles)
                                |T $ %{} :Expr (:at 1600253761575) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text |<>)
                                    |j $ %{} :Leaf (:at 1600253761575) (:by |bjmr3HZle) (:text "|\"TODO list")
                    |wH $ %{} :Expr (:at 1600253767927) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600253767927) (:by |bjmr3HZle) (:text |<>)
                        |j $ %{} :Leaf (:at 1600253773048) (:by |bjmr3HZle) (:text "|\"Flex list layout")
                        |r $ %{} :Leaf (:at 1600253767927) (:by |bjmr3HZle) (:text |style-title)
                    |xD $ %{} :Expr (:at 1600253749957) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |lay-out)
                        |j $ %{} :Expr (:at 1600253749957) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |{})
                            |j $ %{} :Expr (:at 1600253749957) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |:type)
                                |j $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |:list)
                            |n $ %{} :Expr (:at 1600329507379) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600329507379) (:by |bjmr3HZle) (:text |:style)
                                |j $ %{} :Expr (:at 1600329507379) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600329507379) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1600329507379) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600329507379) (:by |bjmr3HZle) (:text |:border)
                                        |j $ %{} :Expr (:at 1600329507379) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600329507379) (:by |bjmr3HZle) (:text |str)
                                            |j $ %{} :Leaf (:at 1600329507379) (:by |bjmr3HZle) (:text "|\"1px solid ")
                                            |r $ %{} :Expr (:at 1600329507379) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1600329507379) (:by |bjmr3HZle) (:text |hsl)
                                                |j $ %{} :Leaf (:at 1600329507379) (:by |bjmr3HZle) (:text |0)
                                                |r $ %{} :Leaf (:at 1600329507379) (:by |bjmr3HZle) (:text |0)
                                                |v $ %{} :Leaf (:at 1600329507379) (:by |bjmr3HZle) (:text |80)
                            |r $ %{} :Expr (:at 1600253749957) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |:layout)
                                |j $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |:flow)
                            |v $ %{} :Expr (:at 1600253749957) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |:size)
                                |j $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |4)
                            |x $ %{} :Expr (:at 1600253749957) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |:gap)
                                |j $ %{} :Expr (:at 1600253749957) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |[])
                                    |j $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |4)
                                    |r $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |4)
                        |r $ %{} :Expr (:at 1600253749957) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |fn)
                            |j $ %{} :Expr (:at 1600253749957) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |idx)
                                |j $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |styles)
                                |r $ %{} :Leaf (:at 1614696464681) (:by |bjmr3HZle) (:text |?)
                                |v $ %{} :Leaf (:at 1614696466468) (:by |bjmr3HZle) (:text |arg)
                            |r $ %{} :Expr (:at 1600330537971) (:by |bjmr3HZle)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1600330539340) (:by |bjmr3HZle) (:text |div)
                                |L $ %{} :Expr (:at 1600330539565) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600330539859) (:by |bjmr3HZle) (:text |{})
                                    |j $ %{} :Expr (:at 1600330540102) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600330540879) (:by |bjmr3HZle) (:text |:style)
                                        |j $ %{} :Expr (:at 1600330595835) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600330596477) (:by |bjmr3HZle) (:text |merge)
                                            |j $ %{} :Leaf (:at 1600330598334) (:by |bjmr3HZle) (:text |styles)
                                            |r $ %{} :Expr (:at 1600330598707) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1600330600396) (:by |bjmr3HZle) (:text |{})
                                                |j $ %{} :Expr (:at 1600330600726) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1600330603102) (:by |bjmr3HZle) (:text |:display)
                                                    |j $ %{} :Leaf (:at 1600330606192) (:by |bjmr3HZle) (:text |:inline-block)
                                |T $ %{} :Expr (:at 1600253749957) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text |<>)
                                    |j $ %{} :Leaf (:at 1600253749957) (:by |bjmr3HZle) (:text "|\"TODO list")
          |style-title $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600253693000) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600253693000) (:by |bjmr3HZle) (:text |def)
                |j $ %{} :Leaf (:at 1600253693000) (:by |bjmr3HZle) (:text |style-title)
                |r $ %{} :Expr (:at 1600253693000) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600253694164) (:by |bjmr3HZle) (:text |{})
                    |j $ %{} :Expr (:at 1600253694401) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600253695575) (:by |bjmr3HZle) (:text |:font-size)
                        |j $ %{} :Leaf (:at 1600253697290) (:by |bjmr3HZle) (:text |24)
                    |r $ %{} :Expr (:at 1600253697653) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600253699136) (:by |bjmr3HZle) (:text |:font-family)
                        |j $ %{} :Leaf (:at 1600253701637) (:by |bjmr3HZle) (:text |ui/font-fancy)
                    |v $ %{} :Expr (:at 1600253702796) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600253711651) (:by |bjmr3HZle) (:text |:font-weight)
                        |j $ %{} :Leaf (:at 1600253712166) (:by |bjmr3HZle) (:text |300)
                    |x $ %{} :Expr (:at 1600253713808) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600253714645) (:by |bjmr3HZle) (:text |:color)
                        |j $ %{} :Expr (:at 1600253714891) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600253715201) (:by |bjmr3HZle) (:text |hsl)
                            |j $ %{} :Leaf (:at 1600253715809) (:by |bjmr3HZle) (:text |0)
                            |r $ %{} :Leaf (:at 1600253716086) (:by |bjmr3HZle) (:text |0)
                            |v $ %{} :Leaf (:at 1600253717269) (:by |bjmr3HZle) (:text |80)
                    |y $ %{} :Expr (:at 1600253810748) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600253811720) (:by |bjmr3HZle) (:text |:margin)
                        |j $ %{} :Leaf (:at 1600253833656) (:by |bjmr3HZle) (:text "|\"16px 0")
                    |yT $ %{} :Expr (:at 1600253821509) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600253823441) (:by |bjmr3HZle) (:text |:display)
                        |j $ %{} :Leaf (:at 1600253826371) (:by |bjmr3HZle) (:text |:inline-block)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1600160415700) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1600160415700) (:by |bjmr3HZle) (:text |ns)
              |j $ %{} :Leaf (:at 1600160415700) (:by |bjmr3HZle) (:text |respo-ui.comp.lay-out-page)
              |r $ %{} :Expr (:at 1600160428675) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1600160428675) (:by |bjmr3HZle) (:text |:require)
                  |j $ %{} :Expr (:at 1600160428675) (:by |bjmr3HZle)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1600160428675) (:by |bjmr3HZle) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1600160428675) (:by |bjmr3HZle) (:text |:refer)
                      |v $ %{} :Expr (:at 1600160428675) (:by |bjmr3HZle)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1600160428675) (:by |bjmr3HZle) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1600160428675) (:by |bjmr3HZle) (:text |div)
                          |v $ %{} :Leaf (:at 1600160428675) (:by |bjmr3HZle) (:text |<>)
                  |r $ %{} :Expr (:at 1600160428675) (:by |bjmr3HZle)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1600160428675) (:by |bjmr3HZle) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1600161174007) (:by |bjmr3HZle) (:text |:as)
                      |v $ %{} :Leaf (:at 1600161174315) (:by |bjmr3HZle) (:text |ui)
                  |v $ %{} :Expr (:at 1600160428675) (:by |bjmr3HZle)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1610553699599) (:by |bjmr3HZle) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1600160428675) (:by |bjmr3HZle) (:text |:refer)
                      |v $ %{} :Expr (:at 1600160428675) (:by |bjmr3HZle)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1600160428675) (:by |bjmr3HZle) (:text |hsl)
                  |x $ %{} :Expr (:at 1600160428675) (:by |bjmr3HZle)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1600160428675) (:by |bjmr3HZle) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1600160428675) (:by |bjmr3HZle) (:text |:refer)
                      |v $ %{} :Expr (:at 1600160428675) (:by |bjmr3HZle)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1600160428675) (:by |bjmr3HZle) (:text |=<)
                  |y $ %{} :Expr (:at 1600161211097) (:by |bjmr3HZle)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1600161217476) (:by |bjmr3HZle) (:text |respo-ui.lay-out)
                      |r $ %{} :Leaf (:at 1600161218964) (:by |bjmr3HZle) (:text |:refer)
                      |v $ %{} :Expr (:at 1600161219190) (:by |bjmr3HZle)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1600161220934) (:by |bjmr3HZle) (:text |lay-out)
      |respo-ui.comp.layouts-page $ {}
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
                        |u $ %{} :Expr (:at 1519576909231) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519576909772) (:by |root) (:text |=<)
                            |j $ %{} :Leaf (:at 1519576910740) (:by |root) (:text |8)
                            |r $ %{} :Leaf (:at 1519576911334) (:by |root) (:text |nil)
                        |x $ %{} :Expr (:at 1506675837748) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |a)
                            |j $ %{} :Expr (:at 1506675837748) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:href)
                                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||https://github.com/Respo/respo-ui/blob/master/src/respo_ui/comp/layouts_page.cljs)
                                |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:inner-text)
                                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Source)
                                |v $ %{} :Expr (:at 1506675837748) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:target)
                                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||_blank)
                    |R $ %{} :Expr (:at 1519576696984) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519668912232) (:by |root) (:text |comp-md-block)
                        |j $ %{} :Leaf (:at 1519576897619) (:by |root) (:text "||Flexbox styles are defined in variables like `ui/row` `ui/center` in flex containers. Here are how they take effects.")
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
                            |b $ %{} :Leaf (:at 1519575379590) (:by |root) (:text ||ui/center)
                            |j $ %{} :Leaf (:at 1651246868535) (:by |bjmr3HZle) (:text |css/center)
                        |p $ %{} :Expr (:at 1519575269970) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                            |b $ %{} :Leaf (:at 1519575600780) (:by |root) (:text ||ui/row-center)
                            |j $ %{} :Leaf (:at 1651246891685) (:by |bjmr3HZle) (:text |css/row-center)
                        |pT $ %{} :Expr (:at 1519575269970) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                            |b $ %{} :Leaf (:at 1539920004309) (:by |bjmr3HZle) (:text ||ui/row-middle)
                            |j $ %{} :Leaf (:at 1651246905859) (:by |bjmr3HZle) (:text |css/row-middle)
                        |q $ %{} :Expr (:at 1519575269970) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                            |b $ %{} :Leaf (:at 1519575559459) (:by |root) (:text ||ui/row)
                            |j $ %{} :Leaf (:at 1651246924855) (:by |bjmr3HZle) (:text |css/row)
                        |r $ %{} :Expr (:at 1519575269970) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                            |b $ %{} :Leaf (:at 1519575569130) (:by |root) (:text ||ui/column)
                            |j $ %{} :Leaf (:at 1651246931541) (:by |bjmr3HZle) (:text |css/column)
                        |s $ %{} :Expr (:at 1519575269970) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                            |b $ %{} :Leaf (:at 1519575583626) (:by |root) (:text ||ui/row-parted)
                            |j $ %{} :Leaf (:at 1651246943576) (:by |bjmr3HZle) (:text |css/row-parted)
                        |sT $ %{} :Expr (:at 1519575269970) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                            |b $ %{} :Leaf (:at 1519575592524) (:by |root) (:text ||ui/column-parted)
                            |j $ %{} :Leaf (:at 1651246959487) (:by |bjmr3HZle) (:text |css/column-parted)
                        |sr $ %{} :Expr (:at 1519575269970) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                            |b $ %{} :Leaf (:at 1519575611012) (:by |root) (:text ||ui/row-dispersive)
                            |j $ %{} :Leaf (:at 1651246971943) (:by |bjmr3HZle) (:text |css/row-dispersive)
                        |sv $ %{} :Expr (:at 1519575269970) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                            |b $ %{} :Leaf (:at 1590685759307) (:by |bjmr3HZle) (:text ||ui/column-dispersive)
                            |j $ %{} :Leaf (:at 1651246981611) (:by |bjmr3HZle) (:text |css/column-dispersive)
                        |v $ %{} :Expr (:at 1519575269970) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                            |b $ %{} :Leaf (:at 1590685763428) (:by |bjmr3HZle) (:text ||ui/row-evenly)
                            |j $ %{} :Leaf (:at 1651246992611) (:by |bjmr3HZle) (:text |css/row-evenly)
                        |x $ %{} :Expr (:at 1519575269970) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519575272514) (:by |root) (:text |render-demo)
                            |b $ %{} :Leaf (:at 1590685771618) (:by |bjmr3HZle) (:text ||ui/column-evenly)
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
                                |j $ %{} :Leaf (:at 1519575671417) (:by |root) (:text "||4px 8px")
                            |r $ %{} :Expr (:at 1519575496376) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519575497331) (:by |root) (:text |:color)
                                |j $ %{} :Leaf (:at 1519575498844) (:by |root) (:text |:white)
                            |v $ %{} :Expr (:at 1519575539459) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519575541320) (:by |root) (:text |:font-size)
                                |j $ %{} :Leaf (:at 1519575541762) (:by |root) (:text |12)
                            |x $ %{} :Expr (:at 1519575544570) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519575547474) (:by |root) (:text |:font-family)
                                |j $ %{} :Leaf (:at 1519575550970) (:by |root) (:text |ui/font-code)
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
      |respo-ui.comp.sidebar $ {}
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
                    |yf $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-entry)
                        |j $ %{} :Leaf (:at 1600160376082) (:by |bjmr3HZle) (:text ||lay-out.html)
                        |r $ %{} :Leaf (:at 1600160382761) (:by |bjmr3HZle) (:text "||Lay Out")
                        |v $ %{} :Expr (:at 1690724777851) (:by |bjmr3HZle)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1690724778366) (:by |bjmr3HZle) (:text |=)
                            |L $ %{} :Leaf (:at 1690724780351) (:by |bjmr3HZle) (:text |:lay-out)
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
                        |j $ %{} :Leaf (:at 1538414124502) (:by |root) (:text "||url(http://cdn.tiye.me/logo/respo.png)")
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
      |respo-ui.comp.widgets-page $ {}
        :defs $ {}
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
                                |T $ %{} :Leaf (:at 1506677519885) (:by |root) (:text |=<)
                                |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |8)
                                |r $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |nil)
                            |x $ %{} :Expr (:at 1506675837748) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |a)
                                |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:href)
                                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||https://github.com/Respo/respo-ui/blob/master/src/respo_ui/comp/widgets_page.cljs)
                                    |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:target)
                                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||_blank)
                                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:inner-text)
                                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Source)
                        |v $ %{} :Expr (:at 1506675837748) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1506675837748) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |{})
                            |r $ %{} :Expr (:at 1506675837748) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1506677528212) (:by |root) (:text |<>)
                                |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text "||Some text as description")
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
                                        |T $ %{} :Leaf (:at 1519835013501) (:by |root) (:text ||link)
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
                                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Yes)
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
                                    |b $ %{} :Leaf (:at 1671118674448) (:by |bjmr3HZle) (:text ||Yes)
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
                                    |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||Yes)
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
                                    |b $ %{} :Leaf (:at 1671121290199) (:by |bjmr3HZle) (:text ||Yes)
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
      |respo-ui.config $ {}
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
      |respo-ui.core $ {}
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
                    |v $ %{} :Expr (:at 1506675837748) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:user-select)
                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |:no-select)
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
      |respo-ui.css $ {}
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
      |respo-ui.lay-out $ {}
        :configs $ {}
        :defs $ {}
          |add-gap $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600241795192) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1610554423155) (:by |bjmr3HZle) (:text |defn)
                |j $ %{} :Leaf (:at 1600241795192) (:by |bjmr3HZle) (:text |add-gap)
                |r $ %{} :Expr (:at 1600241795192) (:by |bjmr3HZle)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1619548122113) (:by |bjmr3HZle) (:text |xs)
                    |T $ %{} :Leaf (:at 1600241798853) (:by |bjmr3HZle) (:text |f)
                |v $ %{} :Expr (:at 1600241825853) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610554424507) (:by |bjmr3HZle) (:text |add-gap-iter)
                    |b $ %{} :Expr (:at 1600241875333) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600241874909) (:by |bjmr3HZle) (:text |[])
                    |f $ %{} :Leaf (:at 1600241877203) (:by |bjmr3HZle) (:text |0)
                    |j $ %{} :Leaf (:at 1600241830807) (:by |bjmr3HZle) (:text |f)
                    |r $ %{} :Leaf (:at 1600241831608) (:by |bjmr3HZle) (:text |xs)
          |add-gap-iter $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |defn)
                |j $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |add-gap-iter)
                |r $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |acc)
                    |j $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |n)
                    |r $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |f)
                    |v $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |xs)
                |v $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |if)
                    |j $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |empty?)
                        |j $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |xs)
                    |r $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |acc)
                    |v $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |recur)
                        |j $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |if)
                            |j $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |empty?)
                                |j $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |acc)
                            |r $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |[])
                                |j $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |first)
                                    |j $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |xs)
                            |v $ %{} :Expr (:at 1619548155431) (:by |bjmr3HZle)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1619548156309) (:by |bjmr3HZle) (:text |->)
                                |L $ %{} :Leaf (:at 1619548157386) (:by |bjmr3HZle) (:text |acc)
                                |T $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |conj)
                                    |r $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |f)
                                        |j $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |n)
                                |j $ %{} :Expr (:at 1619548159726) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1619548160507) (:by |bjmr3HZle) (:text |conj)
                                    |j $ %{} :Expr (:at 1619548161064) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1619548161064) (:by |bjmr3HZle) (:text |first)
                                        |j $ %{} :Leaf (:at 1619548161064) (:by |bjmr3HZle) (:text |xs)
                        |r $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |inc)
                            |j $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |n)
                        |v $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |f)
                        |x $ %{} :Expr (:at 1610554490426) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |rest)
                            |j $ %{} :Leaf (:at 1610554490426) (:by |bjmr3HZle) (:text |xs)
          |gen-gap-fn $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600244602292) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600244602292) (:by |bjmr3HZle) (:text |defn)
                |j $ %{} :Leaf (:at 1600244602292) (:by |bjmr3HZle) (:text |gen-gap-fn)
                |r $ %{} :Expr (:at 1600244602292) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600244602292) (:by |bjmr3HZle) (:text |rule)
                |v $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |fn)
                    |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |idx)
                    |r $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |[])
                        |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |str)
                            |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |idx)
                            |r $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text "|\"-gap")
                        |r $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |cond)
                            |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1614696108605) (:by |bjmr3HZle) (:text |includes?)
                                    |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |#{})
                                        |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:row)
                                        |r $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:row-parted)
                                        |v $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:row-middle)
                                        |x $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:row-center)
                                    |r $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:layout)
                                        |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |rule)
                                |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |=<)
                                    |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:gap)
                                        |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |rule)
                                    |r $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |nil)
                            |r $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |=)
                                    |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:flow)
                                    |r $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:layout)
                                        |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |rule)
                                |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |=<)
                                    |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |let)
                                        |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |gap)
                                                |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:gap)
                                                    |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |rule)
                                        |r $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |cond)
                                            |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1610699913561) (:by |bjmr3HZle) (:text |list?)
                                                    |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |gap)
                                                |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |first)
                                                    |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |gap)
                                            |r $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |number?)
                                                    |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |gap)
                                                |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |gap)
                                            |v $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1610699885642) (:by |bjmr3HZle) (:text |true)
                                                |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |nil)
                                    |r $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |nil)
                            |v $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1614696178471) (:by |bjmr3HZle) (:text |includes?)
                                    |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |#{})
                                        |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:column)
                                        |r $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:column-parted)
                                        |v $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:center)
                                    |r $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:layout)
                                        |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |rule)
                                |j $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |=<)
                                    |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |nil)
                                    |r $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |:gap)
                                        |j $ %{} :Leaf (:at 1600244603594) (:by |bjmr3HZle) (:text |rule)
                            |x $ %{} :Expr (:at 1600244603594) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610699892207) (:by |bjmr3HZle) (:text |true)
                                |j $ %{} :Expr (:at 1600337881195) (:by |bjmr3HZle)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1600337881981) (:by |bjmr3HZle) (:text |div)
                                    |L $ %{} :Expr (:at 1600337882182) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600337882486) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600337885149) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600337885972) (:by |bjmr3HZle) (:text |:style)
                                            |j $ %{} :Expr (:at 1600337886359) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1600337886359) (:by |bjmr3HZle) (:text |{})
                                                |j $ %{} :Expr (:at 1600337886359) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1600337886359) (:by |bjmr3HZle) (:text |:background-color)
                                                    |j $ %{} :Leaf (:at 1600337886359) (:by |bjmr3HZle) (:text |:red)
                                                |r $ %{} :Expr (:at 1600337886359) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1600337886359) (:by |bjmr3HZle) (:text |:width)
                                                    |j $ %{} :Leaf (:at 1600337886359) (:by |bjmr3HZle) (:text |4)
                                                |v $ %{} :Expr (:at 1600337886359) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1600337886359) (:by |bjmr3HZle) (:text |:height)
                                                    |j $ %{} :Leaf (:at 1600337886359) (:by |bjmr3HZle) (:text |4)
          |get-layout-style $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600242789311) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600242802129) (:by |bjmr3HZle) (:text |defn)
                |j $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |get-layout-style)
                |n $ %{} :Expr (:at 1600242802947) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600242807468) (:by |bjmr3HZle) (:text |layout-name)
                |r $ %{} :Expr (:at 1600242789311) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1645116040053) (:by |bjmr3HZle) (:text |case-default)
                    |f $ %{} :Leaf (:at 1600242800208) (:by |bjmr3HZle) (:text |layout-name)
                    |l $ %{} :Leaf (:at 1645116035781) (:by |bjmr3HZle) (:text |style-no-match)
                    |r $ %{} :Expr (:at 1600242789311) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |:row)
                        |j $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |ui/row)
                    |v $ %{} :Expr (:at 1600242789311) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |:column)
                        |j $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |ui/column)
                    |x $ %{} :Expr (:at 1600242789311) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |:center)
                        |j $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |ui/center)
                    |y $ %{} :Expr (:at 1600242789311) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |:row-middle)
                        |j $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |ui/row-middle)
                    |yT $ %{} :Expr (:at 1600242789311) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |:row-center)
                        |j $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |ui/row-center)
                    |yj $ %{} :Expr (:at 1600242789311) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |:row-parted)
                        |j $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |ui/row-parted)
                    |yr $ %{} :Expr (:at 1600242789311) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |:column-parted)
                        |j $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |ui/column-parted)
                    |yt $ %{} :Expr (:at 1600244257764) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600244258757) (:by |bjmr3HZle) (:text |:flow)
                        |j $ %{} :Expr (:at 1600244259327) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600244259635) (:by |bjmr3HZle) (:text |{})
          |lay-out $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600160248818) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1610554368605) (:by |bjmr3HZle) (:text |defn)
                |j $ %{} :Leaf (:at 1600160253491) (:by |bjmr3HZle) (:text |lay-out)
                |r $ %{} :Expr (:at 1600160248818) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600166397961) (:by |bjmr3HZle) (:text |rule)
                    |j $ %{} :Leaf (:at 1600160809386) (:by |bjmr3HZle) (:text |child-map)
                    |r $ %{} :Leaf (:at 1610554353074) (:by |bjmr3HZle) (:text |&)
                    |v $ %{} :Leaf (:at 1610554354172) (:by |bjmr3HZle) (:text |args)
                |v $ %{} :Expr (:at 1610554355293) (:by |bjmr3HZle)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1610554355914) (:by |bjmr3HZle) (:text |let)
                    |L $ %{} :Expr (:at 1610554356168) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Expr (:at 1610554356365) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1610554357196) (:by |bjmr3HZle) (:text |options)
                            |j $ %{} :Expr (:at 1610554360681) (:by |bjmr3HZle)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1610554361754) (:by |bjmr3HZle) (:text |either)
                                |T $ %{} :Expr (:at 1610554358344) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610554359059) (:by |bjmr3HZle) (:text |first)
                                    |j $ %{} :Leaf (:at 1610554360352) (:by |bjmr3HZle) (:text |args)
                                |j $ %{} :Expr (:at 1610554362737) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1610554363080) (:by |bjmr3HZle) (:text |{})
                    |T $ %{} :Expr (:at 1600162807200) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1645116018522) (:by |bjmr3HZle) (:text |case-default)
                        |j $ %{} :Expr (:at 1600166390488) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600166391121) (:by |bjmr3HZle) (:text |:type)
                            |j $ %{} :Leaf (:at 1600166401451) (:by |bjmr3HZle) (:text |rule)
                        |n $ %{} :Expr (:at 1645116015393) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1645116015393) (:by |bjmr3HZle) (:text |<>)
                            |b $ %{} :Expr (:at 1645116015393) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1645116015393) (:by |bjmr3HZle) (:text |str)
                                |b $ %{} :Leaf (:at 1645116015393) (:by |bjmr3HZle) (:text "|\"Unknown rule: ")
                                |h $ %{} :Expr (:at 1645116015393) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1645116015393) (:by |bjmr3HZle) (:text |pr-str)
                                    |b $ %{} :Leaf (:at 1645116015393) (:by |bjmr3HZle) (:text |rule)
                            |h $ %{} :Leaf (:at 1645116015393) (:by |bjmr3HZle) (:text |style-todo)
                        |r $ %{} :Expr (:at 1600166402422) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600166404786) (:by |bjmr3HZle) (:text |:flex)
                            |j $ %{} :Expr (:at 1600166469274) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600242724625) (:by |bjmr3HZle) (:text |render-layout-flex)
                                |j $ %{} :Leaf (:at 1600166612298) (:by |bjmr3HZle) (:text |rule)
                                |r $ %{} :Leaf (:at 1600166615267) (:by |bjmr3HZle) (:text |child-map)
                                |v $ %{} :Leaf (:at 1600166622048) (:by |bjmr3HZle) (:text |options)
                        |t $ %{} :Expr (:at 1600166410698) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600166411462) (:by |bjmr3HZle) (:text |:list)
                            |j $ %{} :Expr (:at 1600166476367) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600245123463) (:by |bjmr3HZle) (:text |render-layout-list)
                                |j $ %{} :Leaf (:at 1600245125217) (:by |bjmr3HZle) (:text |rule)
                                |r $ %{} :Leaf (:at 1600245127834) (:by |bjmr3HZle) (:text |child-map)
                                |v $ %{} :Leaf (:at 1600245129505) (:by |bjmr3HZle) (:text |options)
                        |v $ %{} :Expr (:at 1600166405343) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600166408743) (:by |bjmr3HZle) (:text |:grid)
                            |j $ %{} :Expr (:at 1600166482588) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600166482588) (:by |bjmr3HZle) (:text |<>)
                                |j $ %{} :Leaf (:at 1600166485104) (:by |bjmr3HZle) (:text "|\"TODO grid")
                                |n $ %{} :Leaf (:at 1600245104843) (:by |bjmr3HZle) (:text |style-todo)
                        |w $ %{} :Expr (:at 1600166686174) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600166686989) (:by |bjmr3HZle) (:text |:item)
                            |j $ %{} :Expr (:at 1600241480375) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |render-fill-item)
                                |j $ %{} :Leaf (:at 1600241482113) (:by |bjmr3HZle) (:text |rule)
                                |r $ %{} :Leaf (:at 1600241484270) (:by |bjmr3HZle) (:text |child-map)
                                |v $ %{} :Leaf (:at 1600241486965) (:by |bjmr3HZle) (:text |options)
          |lilac-flex-rule $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600239670571) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600239670571) (:by |bjmr3HZle) (:text |def)
                |j $ %{} :Leaf (:at 1600239670571) (:by |bjmr3HZle) (:text |lilac-flex-rule)
                |r $ %{} :Expr (:at 1600239670571) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600239670571) (:by |bjmr3HZle) (:text |record+)
                    |j $ %{} :Expr (:at 1600239670571) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600239670571) (:by |bjmr3HZle) (:text |{})
                        |j $ %{} :Expr (:at 1600239670571) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239670571) (:by |bjmr3HZle) (:text |:type)
                            |j $ %{} :Expr (:at 1600239670571) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600239670571) (:by |bjmr3HZle) (:text |is+)
                                |j $ %{} :Leaf (:at 1600239670571) (:by |bjmr3HZle) (:text |:flex)
                        |r $ %{} :Expr (:at 1600239670571) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239670571) (:by |bjmr3HZle) (:text |:layout)
                            |j $ %{} :Leaf (:at 1600239842821) (:by |bjmr3HZle) (:text |lilac-layout-names)
                        |v $ %{} :Expr (:at 1600239670571) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239670571) (:by |bjmr3HZle) (:text |:style)
                            |j $ %{} :Leaf (:at 1600239670571) (:by |bjmr3HZle) (:text |lilac-style)
                        |x $ %{} :Expr (:at 1600239670571) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600240006986) (:by |bjmr3HZle) (:text |:gap)
                            |j $ %{} :Leaf (:at 1600239670571) (:by |bjmr3HZle) (:text |lilac-gap)
                        |y $ %{} :Expr (:at 1600239670571) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239670571) (:by |bjmr3HZle) (:text |:items)
                            |j $ %{} :Expr (:at 1687887008895) (:by |bjmr3HZle)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1687887010559) (:by |bjmr3HZle) (:text |list+)
                                |T $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |or+)
                                    |b $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |[])
                                        |b $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1687887149857) (:by |bjmr3HZle) (:text |record+)
                                            |b $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |{})
                                                |b $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |:type)
                                                    |b $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |is+)
                                                        |b $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |:item)
                                                |h $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |:style)
                                                    |b $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |lilac-style)
                                                |l $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |:fill)
                                                    |b $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |any+)
                                        |h $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1687887145781) (:by |bjmr3HZle) (:text |record+)
                                            |b $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |{})
                                                |b $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |:type)
                                                    |b $ %{} :Expr (:at 1687886992224) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |is+)
                                                        |b $ %{} :Leaf (:at 1687886992224) (:by |bjmr3HZle) (:text |:flex)
                                |b $ %{} :Expr (:at 1687887011986) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1687887012262) (:by |bjmr3HZle) (:text |{})
                    |r $ %{} :Expr (:at 1600239758092) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600239758530) (:by |bjmr3HZle) (:text |{})
                        |j $ %{} :Expr (:at 1600239759253) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239773344) (:by |bjmr3HZle) (:text |:check-keys?)
                            |j $ %{} :Leaf (:at 1600239774896) (:by |bjmr3HZle) (:text |true)
          |lilac-gap $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600239078745) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600239078745) (:by |bjmr3HZle) (:text |def)
                |j $ %{} :Leaf (:at 1600239078745) (:by |bjmr3HZle) (:text |lilac-gap)
                |r $ %{} :Expr (:at 1600239914908) (:by |bjmr3HZle)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1600239915595) (:by |bjmr3HZle) (:text |optional+)
                    |T $ %{} :Expr (:at 1600239078745) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600239081909) (:by |bjmr3HZle) (:text |or+)
                        |j $ %{} :Expr (:at 1600239082176) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239082335) (:by |bjmr3HZle) (:text |[])
                            |j $ %{} :Expr (:at 1600239084156) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600239085557) (:by |bjmr3HZle) (:text |number+)
                            |r $ %{} :Expr (:at 1600239086050) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600239092598) (:by |bjmr3HZle) (:text |tuple+)
                                |j $ %{} :Expr (:at 1600239297381) (:by |bjmr3HZle)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1600239298321) (:by |bjmr3HZle) (:text |[])
                                    |T $ %{} :Expr (:at 1600239095820) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600239096787) (:by |bjmr3HZle) (:text |number+)
                                    |j $ %{} :Expr (:at 1600239303110) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600239303110) (:by |bjmr3HZle) (:text |number+)
          |lilac-grid-rule $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |def)
                |j $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |lilac-grid-rule)
                |r $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |record+)
                    |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |{})
                        |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |:type)
                            |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |is+)
                                |j $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |:grid)
                        |r $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |:style)
                            |j $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |lilac-style)
                        |v $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |:size)
                            |j $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |lilac-number-pair)
                        |x $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |:gap)
                            |j $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |lilac-gap)
                        |y $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |:items)
                            |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1610554228368) (:by |bjmr3HZle) (:text |list+)
                                |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |record+)
                                    |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |{})
                                        |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |:from)
                                            |j $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |lilac-number-pair)
                                        |r $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |:size)
                                            |j $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |lilac-number-pair)
                                        |v $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |:item)
                                            |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |record+)
                                                |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |{})
                                                    |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |:type)
                                                        |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |enum+)
                                                            |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |#{})
                                                                |j $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |:item)
                                                    |r $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |:fill)
                                                        |j $ %{} :Expr (:at 1600239717795) (:by |bjmr3HZle)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1600239717795) (:by |bjmr3HZle) (:text |any+)
          |lilac-item-rule $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600245429591) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600245429591) (:by |bjmr3HZle) (:text |def)
                |j $ %{} :Leaf (:at 1600245429591) (:by |bjmr3HZle) (:text |lilac-item-rule)
                |r $ %{} :Expr (:at 1600245429591) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600245443851) (:by |bjmr3HZle) (:text |record+)
                    |j $ %{} :Expr (:at 1600245444178) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600245444430) (:by |bjmr3HZle) (:text |{})
                        |j $ %{} :Expr (:at 1600245453969) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600245457234) (:by |bjmr3HZle) (:text |:type)
                            |j $ %{} :Expr (:at 1600245457967) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600245458758) (:by |bjmr3HZle) (:text |is+)
                                |j $ %{} :Leaf (:at 1600245460365) (:by |bjmr3HZle) (:text |:item)
                        |n $ %{} :Expr (:at 1600249871248) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600249872621) (:by |bjmr3HZle) (:text |:style)
                            |j $ %{} :Leaf (:at 1600249875791) (:by |bjmr3HZle) (:text |lilac-style)
                        |r $ %{} :Expr (:at 1600245461425) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600245466943) (:by |bjmr3HZle) (:text |:fill)
                            |j $ %{} :Expr (:at 1600245468025) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600245470380) (:by |bjmr3HZle) (:text |optional+)
                                |j $ %{} :Expr (:at 1600245471884) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600245472671) (:by |bjmr3HZle) (:text |any+)
                    |r $ %{} :Expr (:at 1600245445114) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600245445462) (:by |bjmr3HZle) (:text |{})
                        |j $ %{} :Expr (:at 1600245446467) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600245448807) (:by |bjmr3HZle) (:text |:check-keys?)
                            |j $ %{} :Leaf (:at 1600245450231) (:by |bjmr3HZle) (:text |true)
          |lilac-layout-names $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600239842821) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600239842821) (:by |bjmr3HZle) (:text |def)
                |j $ %{} :Leaf (:at 1600239842821) (:by |bjmr3HZle) (:text |lilac-layout-names)
                |r $ %{} :Expr (:at 1600239846581) (:by |bjmr3HZle)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1600239849112) (:by |bjmr3HZle) (:text |optional+)
                    |T $ %{} :Expr (:at 1600239842821) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600239842821) (:by |bjmr3HZle) (:text |enum+)
                        |j $ %{} :Expr (:at 1600239842821) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239842821) (:by |bjmr3HZle) (:text |#{})
                            |j $ %{} :Leaf (:at 1600239842821) (:by |bjmr3HZle) (:text |:column)
                            |r $ %{} :Leaf (:at 1600239842821) (:by |bjmr3HZle) (:text |:row)
                            |v $ %{} :Leaf (:at 1600239842821) (:by |bjmr3HZle) (:text |:row-parted)
                            |x $ %{} :Leaf (:at 1600239853678) (:by |bjmr3HZle) (:text |:column-parted)
                            |y $ %{} :Leaf (:at 1600239857442) (:by |bjmr3HZle) (:text |:center)
                            |yT $ %{} :Leaf (:at 1600239861989) (:by |bjmr3HZle) (:text |:row-center)
                            |yj $ %{} :Leaf (:at 1600242210606) (:by |bjmr3HZle) (:text |:row-middle)
                            |yr $ %{} :Leaf (:at 1600245082092) (:by |bjmr3HZle) (:text |:flow)
          |lilac-list-rule $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600239678699) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |def)
                |j $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |lilac-list-rule)
                |r $ %{} :Expr (:at 1600239678699) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |record+)
                    |j $ %{} :Expr (:at 1600239678699) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |{})
                        |j $ %{} :Expr (:at 1600239678699) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |:type)
                            |j $ %{} :Expr (:at 1600239678699) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |is+)
                                |j $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |:list)
                        |r $ %{} :Expr (:at 1600239678699) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |:layout)
                            |j $ %{} :Leaf (:at 1600239896174) (:by |bjmr3HZle) (:text |lilac-layout-names)
                        |v $ %{} :Expr (:at 1600239678699) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |:style)
                            |j $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |lilac-style)
                        |x $ %{} :Expr (:at 1600239678699) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |:size)
                            |j $ %{} :Expr (:at 1600239678699) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |number+)
                        |y $ %{} :Expr (:at 1600239678699) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |:gap)
                            |j $ %{} :Leaf (:at 1600239678699) (:by |bjmr3HZle) (:text |lilac-gap)
          |lilac-number-pair $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600239205494) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600239205494) (:by |bjmr3HZle) (:text |def)
                |j $ %{} :Leaf (:at 1600239205494) (:by |bjmr3HZle) (:text |lilac-number-pair)
                |r $ %{} :Expr (:at 1600240135380) (:by |bjmr3HZle)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1600240137641) (:by |bjmr3HZle) (:text |optional+)
                    |T $ %{} :Expr (:at 1600239205494) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600239205494) (:by |bjmr3HZle) (:text |tuple+)
                        |j $ %{} :Expr (:at 1600239314261) (:by |bjmr3HZle)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1600239314858) (:by |bjmr3HZle) (:text |[])
                            |T $ %{} :Expr (:at 1600239205494) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600239205494) (:by |bjmr3HZle) (:text |number+)
                            |j $ %{} :Expr (:at 1600239315885) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600239315885) (:by |bjmr3HZle) (:text |number+)
          |lilac-style $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600239026268) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600239026268) (:by |bjmr3HZle) (:text |def)
                |j $ %{} :Leaf (:at 1600239026268) (:by |bjmr3HZle) (:text |lilac-style)
                |r $ %{} :Expr (:at 1600239593346) (:by |bjmr3HZle)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1600239595874) (:by |bjmr3HZle) (:text |optional+)
                    |T $ %{} :Expr (:at 1600239026268) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651244701926) (:by |bjmr3HZle) (:text |dict+)
                        |j $ %{} :Expr (:at 1600239033753) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1685802457736) (:by |bjmr3HZle) (:text |tag+)
                        |r $ %{} :Expr (:at 1600239036089) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600239037984) (:by |bjmr3HZle) (:text |any+)
          |render-fill-item $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600241471389) (:by |bjmr3HZle) (:text |defn)
                |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |render-fill-item)
                |n $ %{} :Expr (:at 1600241472474) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600241475307) (:by |bjmr3HZle) (:text |rule)
                    |j $ %{} :Leaf (:at 1600241477192) (:by |bjmr3HZle) (:text |child-map)
                    |r $ %{} :Leaf (:at 1600241479171) (:by |bjmr3HZle) (:text |options)
                |p $ %{} :Expr (:at 1600245422677) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600245424938) (:by |bjmr3HZle) (:text |dev-check)
                    |j $ %{} :Leaf (:at 1600245426928) (:by |bjmr3HZle) (:text |rule)
                    |r $ %{} :Leaf (:at 1600245429106) (:by |bjmr3HZle) (:text |lilac-item-rule)
                |r $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |let)
                    |j $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |item)
                            |j $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |get)
                                |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |child-map)
                                |r $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |:fill)
                                    |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |rule)
                    |r $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |cond)
                        |j $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |nil?)
                                |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |item)
                            |j $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |<>)
                                |j $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |str)
                                    |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text "|\"nothing to fill: ")
                                    |r $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |pr-str)
                                        |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |rule)
                                |r $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |style-todo)
                        |n $ %{} :Expr (:at 1600243770244) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Expr (:at 1600243763281) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600243765487) (:by |bjmr3HZle) (:text |fn?)
                                |j $ %{} :Leaf (:at 1600243766029) (:by |bjmr3HZle) (:text |item)
                            |j $ %{} :Expr (:at 1600243772249) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600243772249) (:by |bjmr3HZle) (:text |item)
                                |j $ %{} :Expr (:at 1600243772249) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600243772249) (:by |bjmr3HZle) (:text |merge)
                                    |j $ %{} :Leaf (:at 1600243772249) (:by |bjmr3HZle) (:text |ui/flex)
                                |r $ %{} :Leaf (:at 1600243772249) (:by |bjmr3HZle) (:text |options)
                        |r $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |some?)
                                |j $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |:item)
                                    |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |item)
                            |j $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |:item)
                                |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |item)
                        |v $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |fn?)
                                |j $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |:render)
                                    |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |item)
                            |j $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |:render)
                                    |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |item)
                                |j $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |merge)
                                    |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |ui/flex)
                                    |r $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |:style)
                                        |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |item)
                                |r $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |options)
                        |x $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |:else)
                            |j $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |<>)
                                |j $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |str)
                                    |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text "|\"Unknown case: ")
                                    |r $ %{} :Expr (:at 1600241469792) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |pr-str)
                                        |j $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |item)
                                |r $ %{} :Leaf (:at 1600241469792) (:by |bjmr3HZle) (:text |style-todo)
          |render-layout-flex $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600166640408) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600247147289) (:by |bjmr3HZle) (:text |defn)
                |j $ %{} :Leaf (:at 1600166640408) (:by |bjmr3HZle) (:text |render-layout-flex)
                |r $ %{} :Expr (:at 1600166640408) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600166640408) (:by |bjmr3HZle) (:text |rule)
                    |j $ %{} :Leaf (:at 1600166640408) (:by |bjmr3HZle) (:text |child-map)
                    |r $ %{} :Leaf (:at 1600166640408) (:by |bjmr3HZle) (:text |options)
                |t $ %{} :Expr (:at 1600239727356) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600239730048) (:by |bjmr3HZle) (:text |dev-check)
                    |j $ %{} :Leaf (:at 1600239734196) (:by |bjmr3HZle) (:text |rule)
                    |r $ %{} :Leaf (:at 1600239737897) (:by |bjmr3HZle) (:text |lilac-flex-rule)
                |v $ %{} :Expr (:at 1600168370874) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600168393204) (:by |bjmr3HZle) (:text |list->)
                    |j $ %{} :Expr (:at 1600168372481) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600230308181) (:by |bjmr3HZle) (:text |{})
                        |j $ %{} :Expr (:at 1600230309732) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600230309570) (:by |bjmr3HZle) (:text |:style)
                            |j $ %{} :Expr (:at 1600230801224) (:by |bjmr3HZle)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1600230802157) (:by |bjmr3HZle) (:text |merge)
                                |T $ %{} :Expr (:at 1600242808797) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600242789311) (:by |bjmr3HZle) (:text |get-layout-style)
                                    |j $ %{} :Expr (:at 1600242810202) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600242810202) (:by |bjmr3HZle) (:text |:layout)
                                        |j $ %{} :Leaf (:at 1600242810202) (:by |bjmr3HZle) (:text |rule)
                                |j $ %{} :Expr (:at 1600230802836) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600230803779) (:by |bjmr3HZle) (:text |:style)
                                    |j $ %{} :Leaf (:at 1600230805589) (:by |bjmr3HZle) (:text |rule)
                    |r $ %{} :Expr (:at 1600168460053) (:by |bjmr3HZle)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1619548055747) (:by |bjmr3HZle) (:text |->)
                        |T $ %{} :Expr (:at 1600168431398) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600168457832) (:by |bjmr3HZle) (:text |:items)
                            |j $ %{} :Leaf (:at 1600168459012) (:by |bjmr3HZle) (:text |rule)
                        |j $ %{} :Expr (:at 1600168462205) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600168465654) (:by |bjmr3HZle) (:text |map-indexed)
                            |j $ %{} :Expr (:at 1600168466065) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600168466324) (:by |bjmr3HZle) (:text |fn)
                                |j $ %{} :Expr (:at 1600168466558) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600168467323) (:by |bjmr3HZle) (:text |idx)
                                    |j $ %{} :Leaf (:at 1600230584103) (:by |bjmr3HZle) (:text |item)
                                |r $ %{} :Expr (:at 1600168468079) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600168468548) (:by |bjmr3HZle) (:text |[])
                                    |j $ %{} :Expr (:at 1600241790512) (:by |bjmr3HZle)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1600241792620) (:by |bjmr3HZle) (:text |str)
                                        |T $ %{} :Leaf (:at 1600168498117) (:by |bjmr3HZle) (:text |idx)
                                    |r $ %{} :Expr (:at 1600244425717) (:by |bjmr3HZle)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1600244426313) (:by |bjmr3HZle) (:text |let)
                                        |L $ %{} :Expr (:at 1600244426512) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Expr (:at 1600244426651) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1600244430808) (:by |bjmr3HZle) (:text |custom-style)
                                                |j $ %{} :Expr (:at 1600244432475) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1600244433201) (:by |bjmr3HZle) (:text |if)
                                                    |L $ %{} :Expr (:at 1600244436305) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1600244435751) (:by |bjmr3HZle) (:text |=)
                                                        |j $ %{} :Leaf (:at 1600244438087) (:by |bjmr3HZle) (:text |:flow)
                                                        |r $ %{} :Expr (:at 1600244439128) (:by |bjmr3HZle)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1600244440428) (:by |bjmr3HZle) (:text |:layout)
                                                            |j $ %{} :Leaf (:at 1600244442402) (:by |bjmr3HZle) (:text |rule)
                                                    |P $ %{} :Expr (:at 1600244443539) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1600244469250) (:by |bjmr3HZle) (:text |{})
                                                        |j $ %{} :Expr (:at 1600244469646) (:by |bjmr3HZle)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1600244471439) (:by |bjmr3HZle) (:text |:margin-bottom)
                                                            |j $ %{} :Expr (:at 1600244472296) (:by |bjmr3HZle)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1600244473005) (:by |bjmr3HZle) (:text |last)
                                                                |j $ %{} :Expr (:at 1600244475033) (:by |bjmr3HZle)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1600244477219) (:by |bjmr3HZle) (:text |:gap)
                                                                    |j $ %{} :Leaf (:at 1600244482742) (:by |bjmr3HZle) (:text |rule)
                                                    |T $ %{} :Leaf (:at 1600244432094) (:by |bjmr3HZle) (:text |ui/flex)
                                        |T $ %{} :Expr (:at 1600241499790) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600242734730) (:by |bjmr3HZle) (:text |lay-out)
                                            |j $ %{} :Expr (:at 1600241528094) (:by |bjmr3HZle)
                                              :data $ {}
                                                |D $ %{} :Leaf (:at 1600241533227) (:by |bjmr3HZle) (:text |assoc)
                                                |T $ %{} :Leaf (:at 1600241514267) (:by |bjmr3HZle) (:text |item)
                                                |j $ %{} :Leaf (:at 1600241535558) (:by |bjmr3HZle) (:text |:style)
                                                |r $ %{} :Leaf (:at 1600244424292) (:by |bjmr3HZle) (:text |custom-style)
                                            |r $ %{} :Leaf (:at 1600241518924) (:by |bjmr3HZle) (:text |child-map)
                                            |v $ %{} :Leaf (:at 1600241520782) (:by |bjmr3HZle) (:text |options)
                        |r $ %{} :Expr (:at 1600241753923) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600241759813) (:by |bjmr3HZle) (:text |add-gap)
                            |j $ %{} :Expr (:at 1600244596455) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600244598684) (:by |bjmr3HZle) (:text |gen-gap-fn)
                                |j $ %{} :Leaf (:at 1600244600750) (:by |bjmr3HZle) (:text |rule)
          |render-layout-list $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600245130362) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600245130362) (:by |bjmr3HZle) (:text |defn)
                |j $ %{} :Leaf (:at 1600245130362) (:by |bjmr3HZle) (:text |render-layout-list)
                |r $ %{} :Expr (:at 1600245130362) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600245130362) (:by |bjmr3HZle) (:text |rule)
                    |j $ %{} :Leaf (:at 1600249749696) (:by |bjmr3HZle) (:text |item-renderer)
                    |r $ %{} :Leaf (:at 1600245130362) (:by |bjmr3HZle) (:text |options)
                |v $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |dev-check)
                    |j $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |rule)
                    |r $ %{} :Leaf (:at 1600245328790) (:by |bjmr3HZle) (:text |lilac-list-rule)
                |x $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |list->)
                    |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |{})
                        |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |:style)
                            |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |merge)
                                |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |get-layout-style)
                                    |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |:layout)
                                        |j $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |rule)
                                |r $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |:style)
                                    |j $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |rule)
                    |r $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1619548048953) (:by |bjmr3HZle) (:text |->)
                        |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600245336336) (:by |bjmr3HZle) (:text |range)
                            |j $ %{} :Expr (:at 1600245338327) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600245338975) (:by |bjmr3HZle) (:text |:size)
                                |j $ %{} :Leaf (:at 1600245339717) (:by |bjmr3HZle) (:text |rule)
                        |r $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |map-indexed)
                            |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |fn)
                                |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |idx)
                                    |j $ %{} :Leaf (:at 1614696251207) (:by |bjmr3HZle) (:text |item)
                                |r $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |[])
                                    |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |str)
                                        |j $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |idx)
                                    |r $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |let)
                                        |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |custom-style)
                                                |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |if)
                                                    |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |=)
                                                        |j $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |:flow)
                                                        |r $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |:layout)
                                                            |j $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |rule)
                                                    |r $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |{})
                                                        |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |:margin-bottom)
                                                            |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |last)
                                                                |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                                                                  :data $ {}
                                                                    |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |:gap)
                                                                    |j $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |rule)
                                                    |v $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |ui/flex)
                                        |v $ %{} :Expr (:at 1600249743259) (:by |bjmr3HZle)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1600249753155) (:by |bjmr3HZle) (:text |item-renderer)
                                            |j $ %{} :Leaf (:at 1600249781334) (:by |bjmr3HZle) (:text |idx)
                                            |r $ %{} :Leaf (:at 1600249789804) (:by |bjmr3HZle) (:text |custom-style)
                                            |v $ %{} :Leaf (:at 1600249793626) (:by |bjmr3HZle) (:text |options)
                        |v $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |add-gap)
                            |j $ %{} :Expr (:at 1600245138828) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |gen-gap-fn)
                                |j $ %{} :Leaf (:at 1600245138828) (:by |bjmr3HZle) (:text |rule)
          |style-no-match $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600240732497) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600240732497) (:by |bjmr3HZle) (:text |def)
                |j $ %{} :Leaf (:at 1600240775099) (:by |bjmr3HZle) (:text |style-no-match)
                |r $ %{} :Expr (:at 1600240732497) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600240733741) (:by |bjmr3HZle) (:text |{})
                    |j $ %{} :Expr (:at 1600240734160) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600240735719) (:by |bjmr3HZle) (:text |:outline)
                        |j $ %{} :Expr (:at 1600240739251) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600240739905) (:by |bjmr3HZle) (:text |str)
                            |j $ %{} :Leaf (:at 1600240742867) (:by |bjmr3HZle) (:text "|\"1px solid red")
          |style-todo $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1600238343920) (:by |bjmr3HZle)
              :data $ {}
                |T $ %{} :Leaf (:at 1600238343920) (:by |bjmr3HZle) (:text |def)
                |j $ %{} :Leaf (:at 1600238343920) (:by |bjmr3HZle) (:text |style-todo)
                |r $ %{} :Expr (:at 1600238343920) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1600238345302) (:by |bjmr3HZle) (:text |{})
                    |j $ %{} :Expr (:at 1600238345600) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600238346880) (:by |bjmr3HZle) (:text |:color)
                        |j $ %{} :Expr (:at 1600238347054) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600238347406) (:by |bjmr3HZle) (:text |hsl)
                            |j $ %{} :Leaf (:at 1600238350687) (:by |bjmr3HZle) (:text |0)
                            |r $ %{} :Leaf (:at 1600238351105) (:by |bjmr3HZle) (:text |80)
                            |v $ %{} :Leaf (:at 1600238351480) (:by |bjmr3HZle) (:text |80)
                    |r $ %{} :Expr (:at 1600238353466) (:by |bjmr3HZle)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1600238356095) (:by |bjmr3HZle) (:text |:border)
                        |j $ %{} :Expr (:at 1600238356418) (:by |bjmr3HZle)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1600238357353) (:by |bjmr3HZle) (:text |str)
                            |j $ %{} :Leaf (:at 1600238362640) (:by |bjmr3HZle) (:text "|\"1px solid ")
                            |r $ %{} :Expr (:at 1600238363878) (:by |bjmr3HZle)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1600238364331) (:by |bjmr3HZle) (:text |hsl)
                                |j $ %{} :Leaf (:at 1600238365607) (:by |bjmr3HZle) (:text |0)
                                |r $ %{} :Leaf (:at 1600238365836) (:by |bjmr3HZle) (:text |0)
                                |v $ %{} :Leaf (:at 1600238367530) (:by |bjmr3HZle) (:text |94)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1600160245341) (:by |bjmr3HZle)
            :data $ {}
              |T $ %{} :Leaf (:at 1600160245341) (:by |bjmr3HZle) (:text |ns)
              |j $ %{} :Leaf (:at 1600160245341) (:by |bjmr3HZle) (:text |respo-ui.lay-out)
              |r $ %{} :Expr (:at 1600161528462) (:by |bjmr3HZle)
                :data $ {}
                  |T $ %{} :Leaf (:at 1600161529100) (:by |bjmr3HZle) (:text |:require)
                  |j $ %{} :Expr (:at 1600161529545) (:by |bjmr3HZle)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1600161531396) (:by |bjmr3HZle) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1600161532156) (:by |bjmr3HZle) (:text |:refer)
                      |v $ %{} :Expr (:at 1600161532337) (:by |bjmr3HZle)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1600161533164) (:by |bjmr3HZle) (:text |<>)
                          |r $ %{} :Leaf (:at 1600168517507) (:by |bjmr3HZle) (:text |list->)
                          |v $ %{} :Leaf (:at 1600168517982) (:by |bjmr3HZle) (:text |div)
                  |n $ %{} :Expr (:at 1600242308793) (:by |bjmr3HZle)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1600242326189) (:by |bjmr3HZle) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1600242315702) (:by |bjmr3HZle) (:text |:refer)
                      |v $ %{} :Expr (:at 1600242315886) (:by |bjmr3HZle)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1600242316687) (:by |bjmr3HZle) (:text |=<)
                  |r $ %{} :Expr (:at 1600166461434) (:by |bjmr3HZle)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1610553732290) (:by |bjmr3HZle) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1600166464727) (:by |bjmr3HZle) (:text |:refer)
                      |v $ %{} :Expr (:at 1600166464902) (:by |bjmr3HZle)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1600166465637) (:by |bjmr3HZle) (:text |hsl)
                  |v $ %{} :Expr (:at 1600230458527) (:by |bjmr3HZle)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1600230461508) (:by |bjmr3HZle) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1600230462892) (:by |bjmr3HZle) (:text |:as)
                      |v $ %{} :Leaf (:at 1600230463699) (:by |bjmr3HZle) (:text |ui)
                  |x $ %{} :Expr (:at 1600238710429) (:by |bjmr3HZle)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1600238713157) (:by |bjmr3HZle) (:text |lilac.core)
                      |r $ %{} :Leaf (:at 1600238714063) (:by |bjmr3HZle) (:text |:refer)
                      |v $ %{} :Expr (:at 1600238714222) (:by |bjmr3HZle)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1600238716305) (:by |bjmr3HZle) (:text |dev-check)
                          |r $ %{} :Leaf (:at 1600238721565) (:by |bjmr3HZle) (:text |number+)
                          |v $ %{} :Leaf (:at 1600238722934) (:by |bjmr3HZle) (:text |record+)
                          |x $ %{} :Leaf (:at 1600238724978) (:by |bjmr3HZle) (:text |string+)
                          |xT $ %{} :Leaf (:at 1685802461255) (:by |bjmr3HZle) (:text |tag+)
                          |y $ %{} :Leaf (:at 1600238726587) (:by |bjmr3HZle) (:text |or+)
                          |yT $ %{} :Leaf (:at 1610554189712) (:by |bjmr3HZle) (:text |list+)
                          |yj $ %{} :Leaf (:at 1600238830705) (:by |bjmr3HZle) (:text |any+)
                          |yr $ %{} :Leaf (:at 1651244708371) (:by |bjmr3HZle) (:text |dict+)
                          |yv $ %{} :Leaf (:at 1600238954687) (:by |bjmr3HZle) (:text |enum+)
                          |yx $ %{} :Leaf (:at 1600239103772) (:by |bjmr3HZle) (:text |tuple+)
                          |yy $ %{} :Leaf (:at 1600239556261) (:by |bjmr3HZle) (:text |is+)
                          |yyT $ %{} :Leaf (:at 1600239600964) (:by |bjmr3HZle) (:text |optional+)
      |respo-ui.main $ {}
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
                            |j $ %{} :Expr (:at 1690724373876) (:by |bjmr3HZle)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1690724400234) (:by |bjmr3HZle) (:text |w-log)
                                |T $ %{} :Expr (:at 1506675837748) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |parse-address)
                                    |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |str)
                                        |j $ %{} :Expr (:at 1506675837748) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |.-pathname)
                                            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |js/location)
                                        |r $ %{} :Expr (:at 1506675837748) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |.-search)
                                            |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |js/location)
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
                        |T $ %{} :Leaf (:at 1555608432129) (:by |bjmr3HZle) (:text |println)
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
                |s $ %{} :Expr (:at 1690724387103) (:by |bjmr3HZle)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1690724387103) (:by |bjmr3HZle) (:text |if)
                    |b $ %{} :Leaf (:at 1690724387103) (:by |bjmr3HZle) (:text |config/dev?)
                    |h $ %{} :Expr (:at 1690724387103) (:by |bjmr3HZle)
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
                |y $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-app!)
                    |j $ %{} :Leaf (:at 1506676439089) (:by |root) (:text |render!)
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
                            |j $ %{} :Leaf (:at 1506676445444) (:by |root) (:text |render!)
                |yj $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |render-router!)
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
                                    |j $ %{} :Leaf (:at 1614696131060) (:by |bjmr3HZle) (:text |render!)
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
                            |j $ %{} :Leaf (:at 1506676489312) (:by |root) (:text |render!)
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
                    |T $ %{} :Leaf (:at 1506676457934) (:by |root) (:text |renderer)
                |v $ %{} :Expr (:at 1506675837748) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1506676460405) (:by |root) (:text |renderer)
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
      |respo-ui.router $ {}
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
                    |yb $ %{} :Expr (:at 1690724141634) (:by |bjmr3HZle)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1690724142895) (:by |bjmr3HZle) (:text |::)
                        |L $ %{} :Leaf (:at 1690724145740) (:by |bjmr3HZle) (:text |:lay-out)
                        |T $ %{} :Expr (:at 1506675837748) (:by nil)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1690724141133) (:by |bjmr3HZle) (:text |[])
                            |T $ %{} :Leaf (:at 1600160601011) (:by |bjmr3HZle) (:text ||lay-out.html)
                    |yj $ %{} :Expr (:at 1690724149302) (:by |bjmr3HZle)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1690724149882) (:by |bjmr3HZle) (:text |::)
                        |L $ %{} :Leaf (:at 1690724152222) (:by |bjmr3HZle) (:text |:components)
                        |T $ %{} :Expr (:at 1506675837748) (:by nil)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1690724148667) (:by |bjmr3HZle) (:text |[])
                            |T $ %{} :Leaf (:at 1506675837748) (:by |root) (:text ||components.html)
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
      |respo-ui.schema $ {}
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
                        |j $ %{} :Leaf (:at 1506675837748) (:by |root) (:text |nil)
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
  :users $ {}
    |bjmr3HZle $ {} (:avatar nil) (:id |bjmr3HZle) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
