# Scramble Squares Solvers <!-- omit in toc -->

A puzzle solving program written in a variety of languages. Submit your own solution!

- [The Puzzle](#the-puzzle)
- [Solutions](#solutions)
- [Submission Guidlelines](#submission-guidlelines)
- [Benchmarks](#benchmarks)
- [Outside Solutions](#outside-solutions)

## The Puzzle

"Scramble Squares" puzzles make good for a fun programming problem.
<!-- TODO: keep writing -->

You can find this puzzle [here](https://www.scramblesquares.com/shop/nature/insects-scramble-squares/). The idea is that
each touching edge must have a complete insect. For example, if you have the head of a beetle on the right edge of the
left piece, you must have the abdomen of a beetle on the left edge of the right piece. Edges on the perimeter of the
puzzle do not matter.

Here's a picture of what it looks like unsolved:

<div style="text-align:center">
  <img src="puzzle.jpg" width="500">
</div>

## Solutions

I have written solutions in five lanugages: C, Clojure, Go, Haskell, and Rust. In invite you to write more!
<!-- Say a word about more more descriptive writeup -->

## Submission Guidlelines

<!-- TODO: write some guidelines -->

## Benchmarks

<!-- TODO: just for fun; comparisons really aren't very fair -->

| Language | LOC | Complexity | Build time (s) | Exe Size (KB) | 10x Runtime (s) | Mem: RSS (KB) |
| :------: | :-: | :--------: | :------------: | :-----------: | :-------------: | :-----------: |
|    c     | 100 |     15     |      0.11      |      825      |      0.01       |     2980      |
|    go    | 123 |     18     |      0.26      |     1416      |      0.44       |     7572      |
| haskell  | 70  |     6      |      1.13      |     1071      |      0.46       |     4012      |
|   rust   | 125 |     18     |      0.95      |     2578      |      0.13       |     2868      |
| clojure  | 58  |     0      |      7.55      |     3629      |      32.97      |    255240     |

## Outside Solutions

|    Language    | Similarity Rating | Generalized |                                                       Link                                                        |
| :------------: | :---------------: | :---------: | :---------------------------------------------------------------------------------------------------------------: |
| Research Paper |       ★★★★★       |      ✓      |                   [cs.umb.edu](https://www.cs.umb.edu/~eb/sam/maccabees/backtrackingPaper.pdf)                    |
| Research Paper |       ★☆☆☆☆       |      ✓      |                         [users.wfu.edu](http://users.wfu.edu/masonsk/scramblesquares.pdf)                         |
|       C#       |       ★★★☆☆       |      ✓      |    [mheironimus.blogspot.com](https://mheironimus.blogspot.com/2015/01/solving-scramble-squares-puzzles.html)     |
|       C#       |       ★★★☆☆       |      ✓      | [codeproject.com](https://www.codeproject.com/Articles/815908/Solving-Scramble-Squares-Backtracking-Algorithm-in) |
|      Ruby      |       ★★★★☆       |             |                        [github.com](https://github.com/mattdsteele/scramblesquares-solver)                        |
|      Java      |       ★★☆☆☆       |      ✓      |                            [github.com](https://github.com/keilhauer/Legespiel-Solver)                            |
|     Python     |       ★★★★★       |             |              [gist.github.com](https://gist.github.com/usrlocalben/b7070ece69f7d13bec161dbf5eb7549b)              |
|       C        |       ★★★☆☆       |      ✓      |                         [sourceforge.net](https://sourceforge.net/projects/crazyturtle/)                          |
|      Icon      |       ★★☆☆☆       |             |                            [ereimer.net](http://ereimer.net/programs/bird-puzzle.icn)                             |
