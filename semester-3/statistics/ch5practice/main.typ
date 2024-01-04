#import "template.typ": *

#show: project.with(
  title: "CH5 Practice",
  authors: ("Yi-Jyun Pan",),
)

#question(1, checked:true)[
  試列出下列隨機變數之可能值，並經由可能值之形式進而判斷其為離散型或是連續型隨機變數。

  + 班上50人，每天缺課的人數。
  + 某台機器在一天8小時的工作天中，全部的故障時間。
  + 某班級學生的總體重。
  + 台灣一年中發生強度超過5的地震次數。
][
  + 離散型隨機變數，可能是 $1,2,3,...,50$
  + 連續型隨機變數，可能是一個任意介於 $[0, 8]$ 的數值。
  + 連續型隨機變數，可能是一個任意介於 $[0, oo)$ 的數值。
  + 離散型隨機變數，可能是 $0,1,2,...$
]

#question(2, checked:true)[
  假設投擲兩顆公平骰子，令 $X$ 表示兩顆骰子朝上面點數之差。試問：

  + 列出此實驗之樣本空間。
  + 列出 $X$ 之所有可能值。
  + 列出 $X$ 之可能值而成的實數值事件，各自包含的樣本點。
  + 經由所包含的樣本點，求出 $X$ 的機率分配。
][
  + $S = {$ $(1,1)$, $(1,2)$, $(1,3)$, $(1,4)$, $(1,5)$, $(1,6)$, $(2,1)$, $(2,2)$, $(2,3)$, $(2,4)$, $(2,5)$, $(2,6)$, $(3,1)$, $(3,2)$, $(3,3)$, $(3,4)$, $(3,5)$, $(3,6)$, $(4,1)$, $(4,2)$, $(4,3)$, $(4,4)$, $(4,5)$, $(4,6)$, $(5,1)$, $(5,2)$, $(5,3)$, $(5,4)$, $(5,5)$, $(5,6)$, $(6,1)$, $(6,2)$, $(6,3)$, $(6,4)$, $(6,5)$, $(6,6)$ $}$
  + $X = {0, 1, 2, 3, 4, 5}$
  + $
    f(x=0) &=> {(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6)} \
    f(x=1) &=> {(1, 2), (2, 1), (2, 3), (3, 2), (3, 4), (4, 3), (4, 5), (5, 4), (5, 6), (6, 5)} \
    f(x=2) &=> {(1, 3), (2, 4), (3, 1), (3, 5), (4, 2), (4, 6), (5, 3), (6, 4)} \
    f(x=3) &=> {(1, 4), (2, 5), (3, 6), (4, 1), (5, 2), (6, 3)} \
    f(x=4) &=> {(1, 5), (2, 6), (5, 1), (6, 2)} \
    f(x=5) &=> {(1,6), (6,1)}
    $
  + #table(
      columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      [$x$], [$0$], [$1$], [$2$], [$3$], [$4$], [$5$],
      [$f(x)$], [$6\/36$], [$10\/36$], [$8\/36$], [$6\/36$], [$4\/36$], [$2\/36$]
    )
]

#question(3, checked:true)[
  若下列各個函數均可以視為一個隨機變數 $X$ 的機率函數，試求下列 $k$ 值及其累加機率函數 $F(x)$ 為何？

  $
  (a)space space& f(x)=cases(
    k dot x/10 & "if" x= 1\,3\,5\,7,
    0 & "otherwise"
  ) \
  (b)space space& f(x)=cases(
    k dot (2x+1) & "if" x= 0\,1\,2\,3\,4\,5,
    0 & "otherwise"
  ) \
  (c)space space& f(x)=cases(
    k dot C^3_(3-x) C^2_x & "if" x= 0\,1\,2,
    0 & "otherwise"
  ) \
  $
][
  各機率之總和必為 1：$sum f(x)=1$。

  *Part A*

  $
  sum f(x) = 1 => k((1+3+5+7)/10) = 1 => k = 10/16 = 5/8
  $

  *Part B*

  $
  sum f(x) = 1 => k(1+3+5+7+9+11) = 1 => k = 1/36
  $

  *Part C*

  $
  f(x = 0) &= k times 1 times 1 &= k \
  f(x = 1) &= k times 3 times 2 &= 6k \
  f(x = 2) &= k times 3 times 1 &= 3k \
  sum f(x) &= 10k = 1 => k = 1/10 \
  $
]

#question(4)[
  某行銷公司預測其年度獲利金額 $X$ 之機率分配如下（單位：萬元）：

  #table(
    columns: (1fr,)*5,
    [*$X$*], [$-80$], [$0$], [$120$], [$250$],
    [*$f(x)$*], [$0.25$], [$0.15$], [$0.40$], [$k$]
  )

  + 試求 $k=?$
  + 試求 $X$ 之累加機率分配函數 $F(x)$？
  + 試求該公司獲利的機率為何？
  + 試求該公司獲利小於 $150$ 萬元的機率為何？
][
  *Part 1*

  $
  sum f(x) &= 1 \
           &=> 0.25+0.15+0.40+k \
         k &= 0.2
  $

  *Part 2*

  #table(
    columns: (1fr,)*5,
    [*$X$*], [$-80$], [$0$], [$120$], [$250$],
    [*$f(x)$*], [$0.25$], [$0.15$], [$0.40$], [$0.20$],
    [*$F(x)$*], [$0.25$], [$0.40$], [$0.80$], [$1.00$],
  )

  *Part 3*

  $
  P(X > 0) &= 1 - P(X <= 0) \
           &= 1 - F(0) \
           &= 1 - 0.40 \
           &= 0.60
  $

  *Part 4*

  $
  P(X < 150) &= P(X <= 120) \
             &= F(120) \
             &= 0.80
  $
]

#question(6, checked:true)[
  假設一個離散型隨機變數 $X$ 的機率分配如下表：

  #table(
    columns: (1fr,)*7,
    [*$X$*], [$1$], [$2$], [$3$], [$4$], [$5$], [$6$],
    [*$f(x)$*], [$0.1$], [$0.2$], [$0.1$], [$?$], [$0.2$], [$0.3$],
  )

  + 試求 $P(X=4)=?$
  + 試求期望值 $E[X]$，變異數 $V(X)$，標準差 $"SD"(X)$。
][
  *Section 1*

  已知 $sum f(x) = 1$.

  $
  P(X=4) = ? &= 1 - 0.1 - 0.2 - 0.1 - 0.2 - 0.3 \
             &= 0.1
  $

  *Section 2*

  $
  E[X] &= 1 dot 0.1 + 2 dot 0.2 + 3 dot 0.1 + 4 dot 0.1 + 5 dot 0.2 + 6 dot 0.3 \
       &= 0.1 + 0.4 + 0.3 + 0.4 + 1 + 1.8 \
       &= 4
  $

  $
  E[X^2] &= 1^2 dot 0.1 + 2^2 dot 0.2 + 3^2 dot 0.1 + 4^2 dot 0.1 + 5^2 dot 0.2 + 6^2 dot 0.3 \
         &= 0.1 + 0.8 + 0.9 + 1.6 + 5 + 10.8 \
         &= 19.2
  $

  $
  V(X) &= E[X^2] - (E[X])^2 \
       &= 19.2 - 16 = 3.2
  $

  $
  "SD"(X) = sqrt(V(X)) approx 1.7889
  $
]

#question(7)[
  假設 $X$ 為一個隨機變數，$f(x)$ 為其機率分配函數，請問：

  + 若 $f(x) = k times 2^x/x!, x=0,1,2$，求期望值 $E(X)$
  + 若 $f(x)>0, x=-1,0,1$，已知 $f(0)=1/5$，則期望值 $E(X^2)$ 為何？
][
  *Q1*

  $
  E(X) &= sum x times f(x) \
       &= 0 times f(0) + 1 times f(1) + 2 times f(2)
  $

  *Q2*

  $
  E(X^2) &= sum x^2 times f(x)
  $
]

#question(8, checked:true)[
  假設一個離散型隨機變數 $X$ 的機率分配如下表：

  #table(
    columns: (1fr,)*6,
    [*$X$*], [$0$], [$1$], [$2$], [$3$], [$4$],
    [*$F(x)$*], [$1\/12$], [$1\/4$], [$7\/12$], [$5\/6$], [$1$]
  )

  試求 (a) $P(0<x<3)$ (b) $E[X]$, (c) $V(X)$, (d) $E[(X+2)(X-3)]$。
][
  #table(
    columns: (1fr,)*6,
    [*$X$*], [$0$], [$1$], [$2$], [$3$], [$4$],
    [*$F(x)$*], [$1\/12$], [$1\/4$], [$7\/12$], [$5\/6$], [$1$],
    [*$f(x)$*], [$1\/12$], [$2\/12$], [$4\/12$], [$3\/12$], [$2\/12$]
  )

  (a)
  $
  P(0<x<3) &= P(1) + P(2) \
           &= 2/12 + 4/12 = 6/12
  $

  (b)
  $
  E[X] &= 0 times 1/12 + 1 times 2/12 + 2 times 4/12 + 3 times 3/12 + 4 times 2/12 \
       &= 2/12 + 8/12 + 9/12 + 8/12 \
       &= 27/12
  $

  (c)
  $
  E[X^2] &= 0^2 times 1/12 + 1^2 times 2/12 + 2^2 times 4/12 + 3^2 times 3/12 + 4^2 times 2/12 \
         &= 2/12 + 16/12 + 27/12 + 32/12 \
         &= 77/12
  $

  $
  V(X) &= E[X^2] - (E[X])^2 \
       &= 77/12 - (27/12)^2 \
       &= 924/144 - 729/144 \
       &= 195/144 = 65/48
  $

  (d)
  $
  E[(X+2)(X-3)] &= E[X^2 - X - 6] \
                &= E[X^2] - E[X] - 6 \
                &= 77/12 - 27/12 - 6 \
                &= 50/12 - 72/12 \
                &= -22/12 = -11/6
  $
]

#question(9, checked:true)[
  政府實施機車強制責任險，且擬定「騎士不幸受傷後，理賠 10 萬元。假設每一位騎士受傷的機率是 $1\/100$，則向每一位騎士平均收取的保費應為多少，才能使得政府在此業務的收支大致平衡？
][
  令 $y$ 為騎士是否受傷，$f(y)$ 為機率，$x$ 為保費。

  #table(
    columns: (1fr,)*3,
    [*$y$*], [$0$], [$1$],
    [*$f(y)$*], [$99\/100$], [$1\/100$],
  )

  $
  99/100 x + (-10 + x) times 1/100 = 0, \
  x = 10/100 = 1/10
  $

  應收取保費 $0.1$ 萬元。
]

#question(10, checked:true)[
  假設一個離散型隨機變數 $X$ 的機率分配如下表：

  #table(
    columns: (1fr,)*5,
    [*$X$*], [$1$], [$2$], [$3$], [$4$],
    [*$f(x)$*], [$0.1$], [$0.2$], [$0.3$], [$0.4$],
  )

  + 試求 $E[X]$ 與 $V(X)$
  + 試求 $E[X^2+3X+1]$、$E[1/X]$ 與 $V(3X+4)$ 為何？
][
  *Section 1*

  $
  E[X] &= 1 times 0.1 + 2 times 0.2 + 3 times 0.3 + 4 times 0.4 \
       &= 0.1 + 0.4 + 0.9 + 1.6 \
       &= 3
  $

  $
  E[X^2] &= 1^2 times 0.1 + 2^2 times 0.2 + 3^2 times 0.3 + 4^2 times 0.4 \
         &= 0.1 + 0.8 + 2.7 + 6.4 \
         &= 10
  $

  $
  V(X) &= 10 - (E[X])^2 \
       &= 10 - 9 = 1
  $

  *Section 2*

  $
  E[X^2+3X+1] &= E[X^2] + E[3X] + E[1] \
              &= 10 + 3E[X] + 1 \
              &= 10 + 9 + 1 \
              &= 20
  $

  *注意 $E[1/X] != 1/E[X].$*

  $
  E[1/X] &= 1/1 times 0.1 + 1/2 times 0.2 + 1/3 times 0.3 + 1/4 times 0.4 \
         &= 0.1 + 0.1 + 0.1 + 0.1 \
         &= 0.4
  $

  $
  V(3X+4) &= E[(3X+4)^2] - (E[3X+4])^2 \
          &= E[9X^2 + 24X + 16] - (3E[X] + 4)^2 \
          &= 9E[X^2] + 24E[X] + 16 - 9(E[X])^2 - 24E[X] - 16 \
          &= 9 times 10 + 24 times 3 + 16 - 9 times 9 - 24 times 3 - 16 \
          &= 90 + 72 + 16 - 81 - 72 -16 \
          &= 9
  $

  *簡易算法*

  $
  V(3X+4) &= 3^2 V(X) \
          &= 9
  $
]

#question(11, wrong:true, checked:true)[
投擲三枚公平硬幣，令 $X$ 表示正面朝上之個數。試求

+ $X$ 之機率分配為何?
+ $P(X >= 2) = ?$
+ $X$ 之期望值 $E[X]$ 與變異數 $V(X)$ 為何？
][
  *應當使用二項分配。*

  二項分配的機率分配、$E[X]$ 和 $V(X)$，分別是 $P(X=x) = C^n_x (p)^x (q)^(1-x)$ $n p$ 跟 $n p q$，其中 $n$ 為試驗次數，$p$ 為成功機率，$q$ 為失敗機率。

  這個式子的二項分配是 $b(n=4; p=0.5)$。

  *Q1*

  $
  P(X = x) &= C^3_x (0.5)^x (0.5)^(3-x), x = 0,1,2,3 \ \

  P(X = 0) &= C^3_0 (0.5)^0 (0.5)^3 = 0.125 \
  P(X = 1) &= C^3_1 (0.5)^1 (0.5)^2 = 0.375 \
  P(X = 2) &= C^3_2 (0.5)^2 (0.5)^1 = 0.375 \
  P(X = 3) &= C^3_3 (0.5)^3 (0.5)^0 = 0.125
  $

  *Q2*

  $
  P(X >= 2) &= P(X = 2) + P(X = 3) \
            &= 0.375 + 0.125 \
            &= 0.5
  $

  *Q3*

  $
  E[X] &= n p = 3 times 0.5 = 1.5 \
  V(X) &= n p q = 3 times 0.5 times 0.5 = 0.75
  $
]

#question(12, checked:true)[
  假設人們一旦感染某一疾病，經治療後患者完全痊癒的機率只有10%。今某一醫院有20名感染此病的患者。試問這20名患者經治療後

  + 恰好有三人完全痊癒的機率為何?
  + 最少有4人，但不超過7人完全痊癒的機率為何?
  + 至多有6人完全痊癒的機率為何?
][
  應使用「二項分配」（非好即壞）。$B(n=20; p=0.1)$.

  $
  P(X = x) &= C^20_x (0.1)^x (0.9)^(20-x), x = 0,1,2,...,20
  $

  *Q1*

  $
  P(X = 3) = C^20_3 (0.1)^3 (0.9)^17
  $

  *Q2*

  $
  P(X = 3) + P(X = 4) + P(X = 5) + P(X = 6) + P(X = 7) \
    = sum_(i=3)^7 C^20_i (0.1)^i (0.9)^(20-i)
  $

  *Q3*

  $
  P(X <= 6) = sum_(i=0)^6 C^20_i (0.1)^i (0.9)^(20-i)
  $
]

#question(13, checked:true, wrong:true)[
  假設某工廠生產線的不良率一直保持在0.02，品管單位每日上、下午各*隨機抽取*30件產品，令 $X$ 為每日檢驗品中的不良品件數，試問：

  + $X$ 的期望值與變異數各為何?
  + 某日檢驗結果為3件不良品的機率為何?
  + 若某日檢驗不良品件數達3件以上，則生產線隔日即停產進行維修，試求生產線隔日正常生產的機率為何?
][
  產品只有「好」「壞」之分，故適合「二項分配」。

  *錯誤點：注意「各取」，所以 $n=30 times 2$.*

  *Q1*

  $
  E[X] &= n p = 60 times 0.02 = 1.2 \
  V(X) &= n p q = 60 times 0.02 times 0.98 = 1.176
  $

  *Q2*

  $
  P(X = x) &= C^60_x (0.02)^x (0.98)^(60-x) \ \
  P(X = 3) &= C^60_3 (0.02)^3 (0.98)^57 \
           &= 34220 times 0.000008 times 0.3161449977 \
           &= 0.0865478546
  $

  *Q3*

  $
  P(X <= 3) &= P(X = 0) + P(X = 1) + P(X = 2) + P(X = 3) \
            &= sum_(i=0)^3 C^60_i (0.02)^i (0.98)^(n-i)
  $
]

#question(14)[
  美國司法制中，陪審團設有12位陪審員，需其中9位以上同意被告有罪，才能真正對被告判刑。對於無罪的被告，陪審員判定其有罪的機率為0.1，而對於有罪的被告，陪審員判定其無罪的機率為0.2。假設每一位陪審員均能獨立判決，並假設有65%被告中是有罪。試問

  + 陪審團做出正確判決的機率為何?
  + 所有被告被判定有罪的機率為何?
][
  應屬於「二項分配」（獨立判決）

  *正確判決的機率*

  $
  P(X=x) &= 0.65(C^12_9 (0.9)^9 (0.1)^3) + 0.35(C^12_3 (0.2)^3 (0.8)^9) \
         &= 0.65(220 times 0.9^9 times 0.1^3) + 0.35(220 times 0.2^3 times 0.8^9) \
  $
]


#question(15, wrong:true, checked:true)[
  台北市某一社區有20戶家庭，其中有15戶安裝有線電視。若從此社區中隨機抽取4家，且令 $X$ 表示安裝有線電視之戶數，試求

  + $X$之機率分配為何?
  + 此4戶人家都無安裝有線電視的機率為何?
  + 此4戶人家都有安裝有線電視的機率為何?
  + 抽取4戶中，安裝有線電視戶數之期望值及變異數為何?
][
  應屬於「*超幾何分配*」（都有 / 都無）。#comment[抽取不放回]

  *Q1*

  $N = 20, n = 4, r = 15$.

  $
  P(X=x) &= (C^r_x C^(N-r)_(n-x)) / C^N_n
         &= (C^15_x C^5_(n-x)) / C^20_4
         &= (C^15_x C^5_(4-x)) / 4845
  $

  *Q2*

  $
  P(X=0) &= (C^15_0 C^5_4) / 4845
         &= 5 / 4845
         &= 0.0010319917
  $

  *Q3*

  $
  P(X=4) &= (C^15_4 C^5_0) / 4845
         &= 1365 / 4845
         &= 0.2817337461
  $

  *Q4*

  $
  E[X] &= n r / N = 4 times 15 / 20 = 3 \ \
  V(X) &= (N-n)/(N-1) times E[X] times (N-r)/(N) \
       &= (20-4)/(20-1) times 3 times (20-15)/(20) \
       &= 16/19 times 3 times 5/20 \
       &= 0.6315789474
  $
]

#question(17, checked:true)[
  17.	假設一桶內有10顆白球、10顆黑球。今從此桶中，隨機抽取5顆球，試求出分別以下列兩方式抽取後之白球個數的期望值及變異數。

  + 抽取放回。
  + 抽取不放回。
][
  *抽取放回*

  屬於「二項分配」。$n=5, p=1/2$

  $
  E[X] &= n times p &= 5 times 10/20 = 2.5 \
  V[X] &= n times p times q &= 5 times 10/20 times 10/20 = 1.25
  $

  *抽取不放回*

  屬於「超幾何分配」。$N=20, n=5, r=10$

  $
  E[X] &= n times r/N = 5 times 10/20 = 2.5 \
  V[X] &= (N-n)/(N-1) times E[X] times (N-r)/N \
       &= 15/19 times 2.5 times 10/20 \
       &= 0.9868421053
  $
]


#question(19, checked:true)[
  連續投擲一公平骰子，令 $X$ 表示 *直到出現一點*，所投擲之總次數。試求：

  + $X$ 之機率分配為何?
  + 直到第四次投擲，才出現一點的機率為何?
  + $X$ 之期望值 $E[X]$ 與變異數 $V(X)$ 為何?
][
  屬於「幾何分配。」$p=1/6$.

  *Q1*

  從「負二向分配」推斷而來。$r=1$

  $
  P(X = x) &= C^(x-1)_(r-1) p^r q^(x-r) \
           &= p q^(x-1)
  $

  已知 $p=1/6$:

  $
  C(X=x) = 1/6 times (5/6)^(x-1)
  $

  *Q2*

  $
  C(X=4) &= 1/6 times (5/6)^3 = 0.167 times 0.579 = 0.096693
  $

  *Q3*

  從「負二項分配」推斷。

  $
  E[X] &= r/p = 1/(1/6) = 6\
  V[X] &= r/p times q/p = 6 times (5/6) / (1/6) = 6 times 5 = 30
  $
]

#question(21, wrong:true, checked:true)[
  某國家型考試錄取率為 $0.2$，令 $X$ 為林小姐參加考試的次數，試問：

  + $X$ 的機率分配函數為何?
  + 林小姐預期要考幾次才會上?
  + 某補習班保證最多考3次即可考上，否則全額退費，請問補習班無須退費的機率為何?
][
  *Q1*

  使用「幾何分配。」

  $
  P(X=x) = 0.2 times 0.8^(x-1), x = 1,2,...
  $

  *Q2*

  *錯誤點：$E[X]=r/p, V(X)=r/p times q/p$*

  $
  E[X] = 1/p = 1/0.2 = 5
  $

  *Q3*

  *錯誤點：$P(X<=3)$ 不是 $P(X=3)$*

  $
  P(X<=3) &= P(X=1) + P(X=2) + P(X=3) \
          &= 0.2 + 0.16 + 0.128 = 0.488
  $
]

#question(23, checked:true)[
  某職棒選手在打擊練習時，擊出全壘打的比例為20%。假設每次打擊即為一次伯努利試驗，令 $X$ 為直到擊出10支全壘打所需的打擊數，試問：

  + $X$ 的機率分配函數為何?
  + 求出 $X$ 的期望值與變異數
  + 求出 $P(X=40)$
][
  應使用「負二向分配」。$r=10, p=0.2$

  *Q1*

  $
  P(X = x) &= C^(x-1)_(r-1) p^r q^(x-r) \
           &= C^(x-1)_9 0.2^10 0.8^(x-10)
  $

  *Q2*

  $
  E[X] &= r/p = 10/0.2 = 50 \ \
  V[X] &= r/p times q/p = 50 times 0.8 / 0.2 = 200
  $

  *Q3*

  $
  P(X=40) &= C^39_9 0.2^10 0.8^30
  $
]

#question(26, checked:true)[
  假設市公車停靠某站牌的次數符合卜瓦松分配，而且半小時內，平均有三班停靠。試問在9:00~9:30之間

  + 至少有一班市公車停靠的機率為何?
  + 無任何市公車停靠的機率為何?
  + 在此半小時內，靠站公車次數之期望值及變異數為何?
][
  $t = "half hour", lambda = 3$.

  $
  P(X=x) &= lambda^x/x! e^(-lambda) &= 3^x/x! e^(-3)
  $

  *Q1*

  $
  P(X>=1) &= 1-P(X=0) \
          &= 1-3^0/0! e^(-3) \
          &= 1-e^(-3) = 1-0.05 = 0.95
  $

  *Q2*

  $
  P(X=0) = 0.05
  $

  *Q3*

  $
  E[X] = 3 \
  V[X] = 3
  $
]

#question(27)[
  假設某一品牌影印機，每影印一百頁平均故障一次。今若欲以此影印機，影印四百頁，則：

  + 平均故障的次數應為何?
  + 無任何故障發生的機率為何?
  + 發生兩次以上故障的機率為何?
][
  $lambda = 1; t = 100 "page"$.

  However, the question unit is $t' = 400 "page"$;
  therefore, $lambda' = 4$.

  *Q1*

  $
  E[X] = 4
  $

  *Q2*

  $
  P(X=x) &= lambda^x/x! e^(-lambda) = 4^x/x! e^(-4) \ \
  P(X=0) &= 4^0/0! e^(-4) = e^(-4) = 0.0183156882
  $

  *Q3*

  $
  P(X>=2) &= 1-P(X=0)-P(X=1) \
          &= 1-e^(-4)-(4 e^(-4)) \
          &= 1-0.0183156882-0.0732627528 \
          &= 0.908421559
  $
]
