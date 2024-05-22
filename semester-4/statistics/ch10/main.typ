#import "template.typ": *

#show: project.with(title: [CH10: 兩個母體比較的統計推論], authors: ("Yi-Jyun Pan",))

#outline(indent: auto)

= 概論

- 有兩個母體 1、母體 2，想比較裡面的統計量（如 $mu_1$, $mu_2$; $p_1$, $p_2$; $sigma_1^2$, $sigma_2^2$）
- 自然想法：抽樣本出來比較
  - 假說：$H_0: mu_1=mu_2$
  - 因為在乎差值，所以轉換成 $H_0: mu_1-mu_2=0$ 或 $>$ 或 $<$。
    - 依此類推，$p_1=p_2$ 轉換成 $p_1-p_2=0$
    - $sigma$ 有不一樣的地方，$H_0: sigma_1^2=sigma_2^2$ 轉換成 $H_0: sigma_1^2/sigma_2^2 = 1$ 或 $>$ 或 $<$
    - 把 $H_0: mu_1-mu_2$, $H_0: sigma_1^2/sigma_2^2 = 1$ 的 $mu_1-mu_2$, $sigma_1^2/sigma_2^2$ 想像成新的母體參數
- 自母體 1, 2 抽出分別 $n_1$, $n_2$ 個樣本，計算樣本平均數 $overline(x)_1-overline(x)_2$、樣本比例 $hat(p)_1-hat(p)_2$、樣本變異數 $s_1^2/s_2^2$，進行統計推論
- 得知道新樣本統計量的分配，才知道如何進行檢定，故學習重點 1: *新的統計量的分配*
- 假設已知 $overline(x)_1-overline(x)_2$ 的抽樣分配，就可以透過 $overline(x)_(1,s) - overline(x)_(2,s)$ 點估計值，加上 $overline(x)_1-overline(x)_2$ 分配，對 $mu_1-mu_2$ 做 $(1-alpha) times 100%$ 的 *信賴區間(C.I.)*。
- 然後令 $mu_1-mu_2 = 0$ 為假說，可以使用 $(overline(x)_(1,s) - overline(x)_(2,s)) + (overline(x)_1 - overline(x)_2)$ 進行 *假說檢定*。

== ⼆個⺟體平均數差的統計推論

=== 例題導讀

#question("ex10.1")[
  分別從兩個獨立的常態分配⺟體中收集40位男⽣與35位女⽣的體重，男⽣的樣本平均體重爲68.5公⽄，女⽣的樣本平均體重爲53.6公⽄，倘若已知男⽣和女⽣體重的標準差分別為 $sigma_1=5, sigma_2=4$ ，試求男女⽣平均體重差 $mu_1-mu_2$ 的95%信賴區間，#highlight[以及男女平均體重是否相等]。
][
  原題目想要從母體 1 中抽取 $n_1=40$ 個樣本；母體 2 中抽取 $n=35$ 個樣本，得到第一組樣本的 $overline(x)_1=68.5, sigma=5$，第二組樣本 $overline(x)_2=51.6, sigma=4$。

  欲求：

  + $mu_1-mu_2$ 母體參數的 95% C.I.
  + 虛無假說 $H_0: mu_1=mu_2$ 在 $alpha=0.05$ 的顯著水準下做假說檢定。

  - 新的母體參數：$mu_1-mu_2$
  - 新的樣本統計量：$overline(x)_1-overline(x)_2$

  *概念 1：$overline(x_1)-overline(x_2)$ 的抽樣分配*

  - 男生母體 ($mu_1$ 未知，$sigma_1=5$) 抽取 $n_1=40$ 個樣本，其統計量 $overline(x)_1=68.5$
    $
    overline(X)_1 tilde N(mu_1, (sigma^1/sqrt(n_1))^2)
    $
  - 女生母體 ($mu_2$ 未知，$sigma_2=4$) 抽取 $n_2=35$ 個樣本，其統計量 $overline(x)_2=53.6$。
    $
    overline(X)_2 tilde N(mu_2, (sigma^2/sqrt(n_2))^2)
    $

  $overline(x)-overline(y)$ 的統計量：

  $
  E[overline(x_1) - overline(x_2)] &= E[overline(x_1)] - E[overline(x_2)] \
             &= mu_1 - mu_2 \
  bold(V(overline(x)_1-overline(x)_2) &= V(overline(x)_1) + V(overline(x)_2)) - 2 "COV"(overline(x), overline(y)) \
    &= (sigma_1^2/n_1 + sigma_2^2/n_2) - 2 "COV"(overline(x), overline(y)) \
    &= sigma_1^2/n_1 + sigma_2^2/n_2 \
    & space "where" "COV"(overline(x), overline(y)) = 0 \
    & space space because overline(x)_1, overline(x)_2 "independent" \
  $

  $overline(x)_1 - overline(x)_2$ 的分配符合 #highlight[*可加性*]，因為

  $
  Z=X+Y
  $

  $X$, $Y$ 均為常數，因為常態分配變數的線性組合還是常態分配，所以 $Z$ 也是常數。結論來說，*兩個常態母體 $sigma_1^2$, $sigma_2^2$ 已知，不論抽出 $n_1$, $n_2$ 樣本大小*

  $
  overline(x)_1-overline(x)_2 tilde N(mu_1-mu_2, sigma_1^2/n_1 + sigma_2^2/n_2)
  $ <已知母體分配-sigma已知>

  #blk[
    *延伸*：兩個 *獨立* 母體分配不確定，$sigma_1^2, sigma_2^2$ 已知，$n_1, n_2$ 均屬於 *大樣本*，根據 C.L.T

    $
    overline(x)_1-overline(x)_2 approx N(mu_1-mu_2, sigma_1^2/n_1 + sigma_2^2/n_2)
    $ <未知母體分配-sigma已知-大樣本>
  ]

    #blk[
    *延伸*：兩個 *獨立* 母體分配不確定，$sigma_1^2, sigma_2^2$ 未知，$n_1, n_2$ 均屬於 *大樣本*，根據 C.L.T.

    $
    overline(x)_1-overline(x)_2 approx N(mu_1-mu_2, s^2/n_1 + s_2^2/n_2)
    $

    $sigma$ 利用 $s$ 估算。
  ]

  *解題：$mu_1-mu_2$ 的 95% C.I.*

  本題應當利用 @未知母體分配-sigma已知-大樣本 所列之分配

  $
  overline(x)_1-overline(x)_2 approx N(mu_1-mu_2, sigma_1^2/n_1 + sigma_2^2/n_2)
  $

  將其轉為 $Z$ 值，可得

  $
  ((overline(x)_1-overline(x)_2) - (mu_1-mu-2))/(sqrt(sigma_1^2/n_1 + sigma_2^2/n_2)) approx N(0, 1) = Z
  $ <ex10.1-a-Z>

  C.I. 之機率分配：

  $
  1-alpha = 0.95 &= P(-Z_(alpha/2) < Z < Z_(alpha/2)) \
             &= P(-1.96 < Z < 1.96)
  $ <CI-possibility-for-two-group>

  #figure(caption: "C.I. 之圖像化解釋")[
    #image("assets/ex10.1-ci-explanation.png")
  ]

  將@ex10.1-a-Z 的 $Z$ 帶入@CI-possibility-for-two-group 可得

  $
  & P(-1.96 < Z < 1.96 ) \
  =& P(-1.96 < ((overline(x)_1-overline(x)_2) - (mu_1-mu-2))/(sqrt(sigma_1^2/n_1 + sigma_2^2/n_2)) < 1.96) \
  =& P(-c < mu_1-mu_2 < c)
  $

  其中 $c$ 是

  $
  plus.minus c = (overline(x)_1-overline(x)_2) plus.minus 1.96 times sqrt(sigma_1^2/n_1 + sigma_2^2/n_2)
  $

  #highlight[所以，我們可以得到 $(mu_1-mu_2)$ 的 $(1-alpha) times 100%$ C.I. 公式為]

  #align(center)[
    $(overline(x) - overline(y))$ $plus.minus$ 查表分配的 $alpha/2$ 值 $times$ $(overline(x) - overline(y))$ 的標準差
  ]

  以此分配來說，是

  $
  (overline(x)_1-overline(x)_2) plus.minus Z_(alpha/2) times sqrt(sigma_1^2/n_1 + sigma_2^2/n_2)
  $ <CI-formula-for-two-group>

  將本題統計量帶入@CI-formula-for-two-group，可得

  $
  &(68.5-53.6) plus.minus 1.96 times sqrt(5^2/40 + 4^2/35) \
  =& 12.8616 or 16.9384
  $

  即為信賴區間 – $mu_1-mu_2$ 的 95% CI 為 $(12.8616, 16.9384)$。

  #blk[
    *回憶*：$mu$ 的 $(1-alpha) times 100%$ C.I.

    $
    overline(x) plus.minus Z_(alpha/2) times sigma/sqrt(n)
    $

    與@CI-formula-for-two-group 結構相當類似（推導邏輯一致），惟需記得

    $
    mu &= overline(x)_1 - overline(x)_2 \
    sigma/sqrt(n) &= sqrt(sigma_1^2/n_1 + sigma_2^2/n_2)
    $
  ]

  *解題：$H_0: mu_1=mu_2$ 的假說檢定*

  + $
    cases(
      H_0: mu_1-mu_2=0 "(宣稱)" \
      H_1: mu_1-mu_2 eq.not 0
    )
    $
    根據 $H_1$，可知為 *雙尾檢定*
  + 其抽樣分配如下
    #figure(caption: "本題假說檢定之原始抽樣分配")[
      #image("assets/ex10.1-hypothesis-testing.png")
    ]
    #figure(caption: "本題假說檢定之標準化後的抽樣分配和其拒絕域")[
      #image("assets/ex10.1-hypothesis-testing-z.png")
    ]
    考慮到是雙尾檢定，故拒絕域有兩邊（小於 $-Z_(alpha/2)$ 和大於 $Z_(alpha/2)$）。
    題目要求 $alpha=0.05$，可得拒絕域 $R R$

    $
    R R &= { Z | Z < -Z_(alpha/2) or Z > Z_(alpha/2) } \
        &= { Z | Z < -1.96 or Z > 1.96 }
    $
  + 將 $overline(x)_1-overline(x)_2$ 標準化，得到 $Z$ 值
    $
    Z &= ((overline(x)_1-overline(x)_2) - (mu_1-mu_2)) / sqrt(sigma_1^2/n_1 + sigma_2^2/n_2) \
      &= ((68.5-53.6) - 0) / sqrt(5^2/40 + 4^2/35) \
      &= 14.3233
    $
    發現到 $Z = 14.3233 > 1.96$，$Z in R R$，拒絕 $R_0$
  + 在 $alpha=0.05$ 下，拒絕男女平均體重相等的宣稱。
]

=== 母體屬於常態分配、$sigma$ 已知

#question("ex10.3")[
  已知兩個母體的變異數分別為 $sigma_1=36$ 與 $sigma_2=25$，倘若此時從兩獨立常態分配母體中分別抽出樣本數 $n_1=12$ 與樣本數 $n_2=18$ 個隨機樣本，而第1個母體的樣本平均數為 $overline(x)=41$，第2個母體的樣本平均為 $overline(y)=32$，試著求出 $mu_1-mu_2$ 之95%的信賴區間，以及 #highlight[第一個母體的平均數是否在 $alpha=0.05$ 下大於第二個母體的平均數]？
][
  *題幹*

  令兩母體 $X$, $Y$，其中 $X$, $Y$ 均符合常態分配。

  - 從 $X$ 母體（$mu$ 未知，$sigma_1^2=26$）中抽出 $n_1=12$ 個樣本，其中這個樣本的 $overline(x)=41$。
  - 從 $Y$ 母體（$mu$ 未知，$sigma_2^2=25$）中抽出 $n_2=18$ 個樣本，其中這個樣本的 $overline(y)=32$。

  欲求：

  + $mu_1-mu_2$ 的 95% C.I.
  + $
    cases(
      H_0: mu_1 <= mu_2 \
      H_1: mu_1 > mu_2 "(宣稱)"
    )
    $ <ex10.3-question-2>
    在 $alpha=0.05$ 下，宣稱成立？

  *解題：$mu_1-mu_2$ 的 95% C.I.*

  因為兩個獨立母體的 $sigma_1^2$, $sigma_2^2$ 已知，且均屬於常態分配，根據@已知母體分配-sigma已知，$overline(x)-overline(y)$ 的抽樣分配為

  $
  overline(x)-overline(y) tilde N(mu_1-mu_2, sigma_1^2/n_1 + sigma_2^2/n_2)
  $ <ex10.3-抽樣分配>

  首先將其轉為 Z 值，可以得到

  $
  ((overline(x)-overline(y))-(mu_1-mu_2))/(sigma_1^2/n_1 + sigma_2^2/n_2) tilde N(0, 1) = Z
  $ <ex10.3-抽樣分配-Z>

  其 C.I. 機率分配，根據@CI-possibility-for-two-group，為

  $
  1-alpha = 0.95 &= P(-Z_(alpha/2) < Z < Z_(alpha/2)) \
             &= P(-1.96 < Z < 1.96)
  $

  套用 $mu_1-mu_2$ 的 C.I. 公式（@CI-formula-for-two-group）

  $
  &(overline(x)-overline(y)) plus.minus Z_(alpha/2) times sqrt(sigma_1^2/n_1 + sigma_2^2/n_2) \
  =& (41-32) plus.minus 1.96 times sqrt(36/12 + 25/18) \
  =& 4.8938 or 13.1062
  $

  即 $mu_1-mu_2$ 的 95% C.I. 為 $(4.8938, 13.1062)$。

  *解題：$alpha=0.05$ 下 $mu_1>mu_2$？*

  首先將@ex10.3-question-2 轉換為

  + 將 @ex10.3-question-2 轉換為
    $
    cases(
      H_0: mu_1-mu_2 <= 0 \
      H_1: mu_1-mu_2 > 0 "(宣稱)"
    )
    $ <ex10.3-question-2-orepr>
    為右尾檢定。
  + $overline(x)-overline(y)$ 的抽樣分配，如@ex10.3-抽樣分配 所寫，是
    $
    overline(x)-overline(y) tilde N(mu_1-mu_2, sigma_1^2/n_1 + sigma_2^2/n_2)
    $
    考慮到是右尾檢定，拒絕域為
    $
    R R = { Z | Z > Z_(alpha) }
    $
    題目要求 $alpha=0.05$，可得拒絕域
    $
    R R = { Z | Z > 1.645 }
    $ <ex10.3-reject-region>
  + 將 $overline(x)-overline(y)$ 轉換為 $Z$ 值，根據@ex10.3-抽樣分配-Z 並代入 $mu_1-mu_2=0$，為
    $
    Z &= ((overline(x)-overline(y))-(mu_1-mu_2))/sqrt(sigma_1^2/n_1 + sigma_2^2/n_2)  \
    &= ((41-32)-0)/sqrt(36/12 + 25/18) \
    &= 4.2960
    $
    由於 $Z = 4.2060 > 1.645$，$Z in R R$，拒絕 $H_0$
  + 在 $alpha=0.05$ 下，接受 $mu_1 > mu_2$ 的宣稱。
 ]


=== 母體屬於常態分配、$sigma$ 未知、小樣本、$sigma_1^2=sigma_2^2$

#question("ex10.4")[
  從兩個獨立的常態分配母體中，隨機抽出兩個獨立的隨機樣本，資料如 @ex10.4-sample-table 所示。若兩母體之變異數 $sigma_1^2$ 和 $sigma_2^2$ 均不知道，但 $sigma_1^2=sigma_2^2=sigma^2$，試著求出 $mu_1-mu_2$ 的 95% 信賴區間，#highlight[以及 $mu_1-mu_2$ 是否大於0]。

  #figure(caption: "")[
    #table(
      columns: 2,
      inset: (x: 24pt, y: 8pt),
      stroke: none,
      table.header[樣本1][樣本2],
      table.hline(),
      [9], [6], [10], [7], [8], [4],
      [8], [5], [9], [6], [7], [8], [12]
    )
  ] <ex10.4-sample-table>
][
  #blk[
    *不知道 $sigma_1$ 和 $sigma_2$，是怎麼知道 $sigma_1^2=sigma_2^2$ 的？*

    因為有抽出樣本，也就代表有樣本變異數 $s_1^2$ 和 $s_2^2$，而有做過檢定 $s_1^2=s_2^2$，所以才能推斷 $sigma_1^2=sigma_2^2$。

    如果 $s_1^2 = s_2^2$，則要套用本題（情況3）的公式；反之（$s_1^2 != s_2^2$），就要套用情況4 /*wip*/ 的公式。

    $sigma_1^2=sigma_2^2$ 是因為 $s_1^2=s_2^2$，實務上你得先做 $s_1^2=s_2^2$ 的檢定，才能確定 $sigma_1^2=sigma_2^2$。
  ]

  *題幹*

  兩個獨立常態母體 $X$, $Y$，其 $mu_1$ 和 $mu_2$ 均未知（而想做這兩個的比較），從中抽出的 $n_1, n_2$ 均為小樣本，其樣本統計量分別為 $overline(x), overline(y)$。

  欲求：

  + $mu_1-mu_2$ 的 95% C.I.
  + $
    cases(
      H_0: mu_1-mu_2 <= 0 \
      H_1: mu_1-mu_2 > 0 "(宣稱)"
    )
    $ <ex10.4-question-2>
    在 $alpha=0.05$ 下，宣稱成立？

  *抽樣分配*

  回想 Ch7，$overline(x)$ 是常態母體，$sigma$ 未知，且屬於小樣本 ($n<30$)，其符合 $t$ 分配

  $
  (overline(x) - mu_1)/(s_1/sqrt(n_1)) tilde t(n_1-1)
  $

  $overline(y)$ 亦為如此

  $
  (overline(y) - mu_2)/(s_2/sqrt(n_2)) tilde t(n_2-1)
  $

  透過一系列證明，可以得到本 $overline(x)-overline(y)$ 的抽樣分配為

  $
  ((overline(x)-overline(y))-(mu_1-mu_2))/sqrt(s_1^2/n_1+s_2^2/n_2) tilde t(n_1+n_2-2)
  $ <normal-sigma-unknown-equal-small-sample-sigma-sampling>

  不過有個 #highlight[重點]：*$s_1^2$ 和 $s_2^2$ 是不可以直接代入的*。雖然兩個母體的變異數不知道，但是題幹說明「*相等*」。既然相等，代表他們有相同的 $sigma^2_p$（$p$ 表示 pooled，共同的），所以需要發展一個 *共同的樣本變異數* $s_p^2$ 去估計它。所以 $s_1^2$ 和 $s_2^2$ 應該用共同的 $s_p^2$ 替代。

  $s_p^2$ 計算的脈絡，可以從 $s_1^2$ 和 $s_2^2$ 的計算方式一窺

  $
  s_1^2 &= sum(x_i-overline(x))^2/(n_1-1) \
  s_2^2 &= sum(y_i-overline(y))^2/(n_2-1)
  $

  可以看到 $s_1^2$ 的自由度就是 $n_1-1$，$s_2^2$ 的自由度就是 $n_2-1$，因此 $s_p^2$ 的自由度就是 $n_1+n_2-2$。因此，#highlight[$s_p^2$ 的計算方式是]

  $
  s_p^2 = ((n_1-1)s_1^2 + (n_2-1)s_2^2)/(n_1+n_2-2)
  $ <normal-sigma-unknown-equal-small-sample-sigma-sampling-sp>

  *注意：@normal-sigma-unknown-equal-small-sample-sigma-sampling 到  @normal-sigma-unknown-equal-small-sample-sigma-sampling-sp 均屬於新的統計量*。另外 $t$ 分配沒有可加性，故和 #link(<ex10.1>)[Example 10.1] 的推導方式有異。

  *解題：$mu_1-mu_2$ 的 95% C.I.*

  本題的抽樣分配為@normal-sigma-unknown-equal-small-sample-sigma-sampling-sp，將其轉為 $t$ 分配，可以得到

  $
  ((overline(x)-overline(y))-(mu_1-mu_2))/sqrt(s_1^2/n_1+s_2^2/n_2) tilde t(n_1+n_2-2)
  $

  $
  s_p^2 = ((n_1-1)s_1^2 + (n_2-1)s_2^2)/(n_1+n_2-2)
  $

  其中本題兩個樣本 $n_1=6, n_2=7$，分別計算其平均數和變異數

  $
  overline(x)_1 &= (sum x_(1,i))/n = 9 \
  overline(x)_2 &= (sum x_(2,i))/n = 6 \
  \
  s_1^2 &= (sum (x_(1,i)-overline(x)_1)^2)/(n_1-1) = 2.6667
  s_2^2 &= (sum (x_(2,i)-overline(x)_2)^2)/(n_2-1) = 2
  $

  $
  s_p^2 &= ((7-1)2.6667 + (6-1)2)/(7+6-2) = 2.3637
  $

  首先列出其機率式 (@CI-possibility-for-two-group)，注意 $t$ 分配是從 @normal-sigma-unknown-equal-small-sample-sigma-sampling 來的：

  $
  "df" = 6+7-2 = 11 \
  1-alpha = 0.95 &= P(-t_(alpha/2)(11) < T < t_(alpha/2)(11)) \
            &= P(-2.201 < T < 2.201)
  $

  套用 C.I. 公式 @CI-formula-for-two-group（注意標準差不同），可以得到

  $
  &(overline(x)-overline(y)) plus.minus t_(alpha/2)(11) times sqrt(s_p^2/n_1 + s_p^2/2) \
  =& (9-6) plus.minus 2.201 times sqrt(2.3637/6 + 2.3637/7) \
  =& 1.1174 or 4.8826
  $

  即 $mu_1-mu_2$ 的 95% C.I. 為 $(1.1174, 4.8826)$。

  *解題：$alpha=0.05$ 下 $mu_1>mu_2$？*

  + 將 @ex10.4-question-2 轉換為
    $
    cases(
      H_0: mu_1-mu_2 <= 0 \
      H_1: mu_1-mu_2 > 0 "(宣稱)"
    )
    $ <ex10.4-question-2-orepr>
    為右尾檢定。
  + $overline(x)-overline(y)$ 的抽樣分配，如@normal-sigma-unknown-equal-small-sample-sigma-sampling-sp 所寫，是
    $
    ((overline(x)-overline(y))-(mu_1-mu_2))/sqrt(s_1^2/n_1+s_2^2/n_2) tilde t(n_1+n_2-2)
    $
    考慮到是右尾檢定，拒絕域為
    $
    R R = { T | T > t_(alpha)(11) }
    $
    題目要求 $alpha=0.05$，可得拒絕域
    $
    R R = { T | T > 1.796 }
    $ <ex10.4-reject-region>
  + 將 $overline(x)-overline(y)$ 轉換為 $t$ 值，根據@normal-sigma-unknown-equal-small-sample-sigma-sampling-sp 並代入 $mu_1-mu_2=0$，為
    $
    T &= ((overline(x)-overline(y))-(mu_1-mu_2))/sqrt(s_1^2/n_1+s_2^2/n_2)  \
    &= ((9-6)-0)/sqrt(2.3637/6+2.3637/7) \
    &= 3.5073
    $
    由於 $T = 3.5073 > 1.796$，$T in R R$，拒絕 $H_0$
  + 在 $alpha=0.05$ 下，接受 $mu_1 > mu_2$ 的宣稱。
]

