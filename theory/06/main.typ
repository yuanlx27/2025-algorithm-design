#import "@local/sysu-templates:0.2.0": exercise

#show: exercise.with(
  title: "Exercise 6",
  subtitle: "Design and Analysis of Algorithms (Theory)",
  student: (name: "Langxi Yuan", id: "23336294"),
)

#let solution(body) = block(inset: 0.5em, width: 100%)[
  *_Solution._* #body
]

= 6.10

= 6.14

= Extra 1

Convert the following linear program into standard form:

$
  min -8 x_1 + 6 x_2 quad s.t. \

  cases(
    4 x_1 + 3 x_2 <= 13,
    2 x_1 - 3 x_2 >= 10,
    x_1 - x_2 = 2,
    x_1 >= 0,
  )
$

#solution[
  - *Step 1:* Deal with $x_2$. Let

  $
    x_2 = x_2^+ - x_2^-, wide x_2^+, x_2^- >= 0.
  $

  -
]
