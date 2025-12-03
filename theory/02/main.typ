#import "@preview/codly:1.3.0": *

#set text(
  font: (
    (name: "Libertinus Serif", covers: "latin-in-cjk"),
    (name: "Noto Serif CJK SC"),
  ),
  lang: "zh",
)

#show: codly-init
#codly(
  number-format: none,
  zebra-fill: none,
)

= 3.2

经典题。可用动态规划算法在 $O(n^2)$ 复杂度内求解，或用二分查找算法在 $O(n log n)$ 内求解。

#raw(block: true, lang: "py", read("assets/3-02.py"))

= 3.10

与普通的 0-1 背包类似，在动态规划算法的状态中多加一维来处理第二个限制。

#raw(block: true, lang: "py", read("assets/3-10.py"))

= 3.15

设 $"dp"(i, j)$ 表示在前 $i$ 天内，距上次检修经过了 $j$ 天（检修当天对应 $j = 0$ 的情况），能加工的最大任务数。则有状态转移方程：

$
cases(
  "dp"(i, 0) = max_(0 <= k <= i - 1) "dp"(i - 1, k),
  "dp"(i, j) = "dp"(i - 1, j - 1) + min{x_i, s_j} wide (0 < j <= i),
)
$

代码实现略。
