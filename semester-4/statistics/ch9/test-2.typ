#import "template.typ": *

#show: project.with(title: [CH9: 假設檢定 – 第三次小考], authors: ("Yi-Jyun Pan",))

= 第一題

某學生欲調查班上同學之手機電池健康度平均是否低於90%，於是隨機抽取10 位學生其手機電池健康度為

#align(center)[
  91, 90, 77, 84, 81, 95, 80, 97, 89, 74
]

假設母體為常態分配，試在顯著水準 $alpha=0.05$ 下，試以 *臨界值檢定法* 檢定該班上學生之手機電池健康度平均是否低於90%。

提示：健康度均呈以 100，$overline(x)=85.8, s = 7.76$.

== 答案

*虛無/對立假設*

$
cases(
  H_0: mu >= 90,
  H_1: mu < 90 "(宣稱)"
)
$

因為 $H_0$ 為大於符號，故為左尾檢定。

*檢定統計量和決策法則*

由於母體是常態分配，且 $mu$ 未知，故使用 $t$ 檢定。

$
overline(X) tilde t_(n-1)(overline(x), s) \
overline(X) tilde t_(9)(85.8, 7.76) \
$

考慮顯著水準 $alpha=0.05$，可寫出拒絕域為（使用臨界值法）

$
c &= mu - t_(alpha)(n-1) times s/sqrt(n) \
  &= 90 - t_(0.05)(9) times 7.76/3.162 \
  &= 90 - 1.833 times 7.76/3.162 \
  &= 85.5015
$

$
R R = { overline(x) | overline(x) < c }
$

*判斷是否在拒絕域*

由於 $overline(x)=85.8 cancel(<) 85.5015$，所以拒絕虛無假設，即有足夠證據顯示手機電池健康度平均低於90%。

= 第二題

一般人多認為肥胖和心臟病有相當大的關係，其研究機構為驗證此種說法是否可靠，隨機抽樣 1200 位肥胖患者進行調查，發現其中 650 位肥胖患者。已知台灣人肥胖比例 50%，試在顯著水準 $alpha=0.01$ 下，使用 *標準統計量檢定法* 檢定肥胖與心臟病到底有無關聯？

== 答案

$
hat(p) = 650/1200 = 0.5417 \
E[X] = p = 0.5 \
V(X) = p(1-p)/n = 0.5(1-0.5)/1200 = 0.0002083
s = sqrt(V(X)) = sqrt(0.0002083) = 0.01443
$

*虛無/對立假設*

$
cases(
  H_0: p <= 0.5 "(無關)",
  H_1: p > 0.5 "(有關)"
)
$

因為 $H_0$ 為小於符號，故為右尾檢定。

*檢定統計量和決策法則*

由於 $n=1200>30$，故屬於大樣本

$
overline(X) approx N(p, p(1-p)/n) \
overline(X) approx N(0.5, 0.0002083)
$

考慮顯著水準 $alpha=0.01$，可寫出拒絕域為（使用標準統計量法）

$
R R &= {Z | Z > Z_0.01} \
    &= {Z | Z > 2.33} \
$

*判斷是否在拒絕域*

$
Z = (hat(p) - p)/s = (0.5417 - 0.5)/0.01443 = 2.84
$

由於 $Z=2.84 > 2.33$，$Z in R R$，故拒絕 $R_0$

*具體結論*

在 $alpha=0.01$ 下，肥胖與心臟病有關聯。

= 第三題

全國成年人血液膽固醇平均濃度為 190mg/dL。因飲食習慣差異，公衛學者猜想某地區成年人膽固醇平均濃度與全國的情形不一致，並非190mg/dL。假設成年人血液膽固醇濃度為常態分配，公衛學者於該地區隨機抽樣25位成年民眾並測量其血液膽固醇濃度，樣本平均數為 220mg/dL，母體標準差已知為 $sigma$ $=$ 45mg/dL，當公衛學者願意承擔 0.05的機率（風險）犯型一錯誤下，以 *臨界值檢定法* 檢定是否正確？

== 答案

*虛無/對立假設*

$
cases(
  H_0: mu = 190,
  H_1: mu != 190 "(宣稱)"
)
$

因為 $H_0$ 為等於符號，故為雙尾檢定。

*檢定統計量和決策法則*

由於母體是常態分配，且 $mu$ 未知，故使用 $t$ 檢定。

$
overline(X) tilde t_(n-1)(overline(x), s) \
overline(X) tilde t_(24)(220, 45) \
$

考慮顯著水準 $alpha=0.05$，可寫出拒絕域為（使用臨界值法）

$
c = mu plus.minus t_(alpha/2)(n-1) times s/sqrt(n) \
  = 190 plus.minus t_(0.025)(24) times 45/sqrt(25) \
  = 190 plus.minus 2.064 times 45/5 \
  = 190 plus.minus 18.576 \
  = 171.424, 208.576
$

$
R R = { overline(x) | overline(x) < 171.424 or overline(x) > 208.576 }
$

*判斷是否在拒絕域*

由於 $overline(x)=220 > 208.576$，所以 $overline(x) in R R$，拒絕 $R_0$

*具體結論*

在 $alpha=0.05$ 下，接受該地區成年人膽固醇平均濃度與全國的情形不一致的假說。

= 第四題

一小學過去統計結果顯示學生之平均身高為125公分，今抽了144 名學生測得平均身高為
130公分，變異數為36平方公分，試以顯著水準0.05下，以 $P$ 值法檢定現在學生身高是否有進步？

== 答案

*虛無/對立假設*

$
cases(
  H_0: mu <= 125,
  H_1: mu > 125 "(宣稱)"
)
$

*檢定統計量和決策法則*

由於 $n=144>30$，故為大樣本

$
overline(X) tilde N(130, 36)
$

考慮顯著水準 $alpha=0.05$，可寫出拒絕域為（使用 $P$ 值法）

$
R R = { "p-value" | "p-value" > alpha = 0.05 }
$

*判斷是否在拒絕域*

$
P(overline(X) > overline(x)) &= P(overline(X) > 130) \
         &= P(Z > (130-125)/(6/bold(sqrt(144)))) \
         &= P(Z > 5/(6/12)) \
         &= P(Z > 10) \
$

由於 $P(Z > 3.59) = 0.0002$，故可以確定 $P(Z > 10) < 0.0002$，必定大於 $0.05$，故 $"p-value" in R R$，拒絕 $R_0$。

*具體結論*

在 $alpha=0.05$ 下，可以證明學生身高有進步。

= 第五題

甲公司根據過去資料，在台中市家庭使用其生產之飲料的佔有率為15%。公司使用新的配方改善飲料口味後，聲稱其新飲料之市場佔有率超過15%。為此，公司隨機抽取150戶進行電話訪查，發現有 35 戶表示使用其飲料。試在顯著水準 $alpha=0.05$ 時，以*臨界值檢定法*檢定甲公司所聲稱的飲料市場佔有率是否有顯著提升。

== 答案

*虛無/對立假設*

$
cases(
  H_0: p<=0.15 \
  H_1: p>0.15 "(聲稱)"
)
$

為右尾檢定。

*檢定統計量和決策法則*

因為 $n p>10$ 且 $n (1-p) > 10$，故

$
E[X] &= p = 0.15 \
V(X) &= p(1-p) = 0.1275
$

$
hat(p) approx N(0.15, 0.1275)
$

$
c &= 0.15 + Z_(0.05) times sqrt(0.1275/150) \
  &= 0.15 + 1.645 times 0.0291547595 \
  &approx 0.1979
$

$
R R = { hat(p) | hat(p) > 0.1979 }
$

*判斷是否在拒絕域*

$
hat(p) &= 35/150 = 0.2333
$

將 $hat(p)=0.2333$ 帶入，發現其大於 $0.1979$，故 $hat(p) in R R$，拒絕 $H_0$

*具體結論*

在 $alpha=0.05$ 下，接受甲公司所聲稱的飲料市場佔有率有顯著提升。
