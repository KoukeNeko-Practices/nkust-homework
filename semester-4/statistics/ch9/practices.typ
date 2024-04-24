#import "template.typ": *

#show: project.with(title: [CH8: 估計 – 習題], authors: ("Yi-Jyun Pan",))

#question("Q9")[
  某盒裝餅乾標是重量為190 公克，標準差為9.5 公克。現隨機抽取20 盒，測得平均重量為185 公克。

  + 試應用柴比雪夫不等式，求算餅乾平均重量的95%信賴區間。
  + 若已知餅乾重量呈常態，則 1. 的答案應為何?
][
  信賴區間之 $alpha$ 為 $1-0.05 = 0.95$.

  // #text(fill: red)[*不等式*]

  // $
  // &P(|X-mu| < k*sigma) = 1 - 1/k^2 = 0.95 \
  // <=> &k^2 = 100/5 = 20 \
  // <=> &k = sqrt(20) = 4.472
  // $

  *常態分佈的式子*

  已知 $overline(X) tilde N(overline(x), s^2)$, $E(overline(X)) = 185$, $V(overline(X))^2 = 9.5^2/20 = 4.5125$.

  $
  P(Z_(-alpha/2) < (x - E[overline(X)])/V(overline(X)) < Z_(alpha/2)) = 0.95 \
  P(Z_(-0.025) < (x - 185)/sqrt(4.5125) < Z_(0.025)) = 0.95 \
  P(-1.96 < (x - 185)/2.1243 < 1.96) = 0.95 \
  P(185 - 1.96 times 2.1243 < x < 185 + 1.96 times 2.1243) = 0.95 \
  P(180.84 < x < 189.17) = 0.95
  $

  故信賴區間介於 $(180.84, 189.17)$.
]
