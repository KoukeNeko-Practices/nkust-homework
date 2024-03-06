#import "template.typ": *

#show: project.with(title: [CH7: 抽樣與抽樣分配], authors: ("Yi-Jyun Pan",))

#outline(indent: auto)

= 概論

- 母體 $N$: $x_1, x_2, ..., x_n$
  - 參數（希臘—唯一值—字母）：$mu, sigma^2, p$
  - 數量眾多，難以全部找全
- 樣本 $n$：母體數分集合，長得像母體
  - 參數（統計量）：$overline(x), s^2, overline(p)$
  - 目的：使 $overline(x)$ 接近 $mu$, $overline(p)$ 接近 $p$，$s^2 -> sigma^2$……

== 為何要抽樣分配？

因為 $n subset N$（樣本是母體的一部分），以體重為例，原則上母體是 $N= 10000, mu = 70$。但抽樣出的樣本考慮到只是部分集合，可能無法涵蓋到所有情境，所以可能會有誤差（$n_1=100, overline(x_1)=69$），且抽出的不同樣本可能會有不同的結果（ex: $n_2=100, overline(x_2)=69.5$, $n_3=100, overline(x_3)=71.3$, …）。

但假如我們知道 $overline(x)$ 的機率分配（也就是 ==抽樣分配== ），就可以知道 $overline(x)$ 的平均值、變異數、標準差，進而知道 $overline(x)$ 的範圍，進而知道 $mu$ 的範圍。用表格列出 $x$ 和 $p(x)$，類似：

#table(
  columns: (1fr, )*7,
  [*$x$*], [$1$], [$2$], [$3$], [$4$], [$5$], [$6$],
  [*$p(x)$*], [$1/6$], [$1/6$], [$1/6$], [$1/6$], [$1/6$], [$1/6$]
)

從這之中可以再進一步得出平均值 ($E[x]$) 和變異數 ($V[x]$)。

== 教學內容

在 $n$ 固定的情況下，知道：

- $overline(x)$ 的抽樣分配
- $overline(p)$ 的抽樣分配
- $s^2$ 的抽樣分配
