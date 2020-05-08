# Scramble Squares Solvers <!-- omit in toc -->

A puzzle solving program written in a variety of languages. Submit your own solution!

- [The Puzzle](#the-puzzle)
- [Solutions](#solutions)
- [Submission Guidelines](#submission-guidelines)
- [Benchmarks](#benchmarks)
- [Similar Projects](#similar-projects)

## The Puzzle

[Scramble Squares](https://www.scramblesquares.com/) puzzles make good for a fun programming problem. The problem small
enough for a single-file implementation, but complex enough to make you think.

Scramble Squares puzzles consist of nine square pieces that fit together to make a larger 3x3 square. In the solution,
all interior edges must match.

This repo contains many solutions to [one particular
puzzle](https://www.scramblesquares.com/shop/nature/insects-scramble-squares/). In this puzzle, edges contain either the
head or the tail of one of four insects. Here's a picture of what it looks like unsolved:

<div style="text-align:center">
  <img src="puzzle.jpg" width="500">
</div>

## Solutions

This project is starting with solutions in five languages. I originally wrote a solution in C when my primary motivation
was solving the puzzle. I added solutions in Clojure, Go, Haskell, and Rust when my motivation was learning new
languages. You can read a little more about that experience [here](https://github.com/kkredit/scramble-squares-solver).

Solving this problem in new languages was a pleasure. I hope you will share in it by submitting your own solution! If
you follow the [guidelines below](#submission-guidelines) and submit a merge request, I will approve it and add your
solution to the list.

Currently implemented languages:

- C
- Clojure
- Go
- Haskell
- Rust

## Submission Guidelines

Before submitting a solution, please meet the following guidelines:

1. Include a comment at the top of the file with your name and a reference to the CC0-1.0 license
1. Write a Makefile such that produces an executable called `bin/puzzle`
1. Implement the solution such that it prints 1-4 (including rotations) solutions in a somewhat readable format

For languages that do not produce an executable, `bin/puzzle` may be a shell script that invokes your program. See the
Clojure solution as an example. Either you or I can update the root Makefile and Dockerfile, and optionally add the
solution to the benchmarking script.

<!--
Ideas

- Update benchmark.sh to collect more stats and name champions for each language
  - code golf (no non-standard libraries)
  - execution time
  - memory usage
- Maybe document all the algorithms employed
-->

## Benchmarks

These benchmarks are just for fun, as many cross-language comparisons are not fair. [scc](https://github.com/boyter/scc)
is used for the LOC and complexity measurements. Build time, runtime and memory usage are on whatever machine on which I
last ran the benchmarking script.

If you want your solution to be benchmarked, add it to the list at the top of `benchmark.sh`.

| Language | LOC | Complexity | Build time (s) | Exe Size (KB) | 10x Runtime (s) | Mem: RSS (KB) |
| :------: | :-: | :--------: | :------------: | :-----------: | :-------------: | :-----------: |
|    c     | 100 |     15     |      0.11      |      825      |      0.01       |     2980      |
|    go    | 123 |     18     |      0.26      |     1416      |      0.44       |     7572      |
| haskell  | 70  |     6      |      1.13      |     1071      |      0.46       |     4012      |
|   rust   | 125 |     18     |      0.95      |     2578      |      0.13       |     2868      |
| clojure  | 58  |     0      |      7.55      |     3629      |      32.97      |    255240     |

## Similar Projects

|    Language    | Generalized |                                                       Link                                                        |
| :------------: | :---------: | :---------------------------------------------------------------------------------------------------------------: |
| Research Paper |      ✓      |                   [cs.umb.edu](https://www.cs.umb.edu/~eb/sam/maccabees/backtrackingPaper.pdf)                    |
| Research Paper |      ✓      |                         [users.wfu.edu](http://users.wfu.edu/masonsk/scramblesquares.pdf)                         |
|       C#       |      ✓      |    [mheironimus.blogspot.com](https://mheironimus.blogspot.com/2015/01/solving-scramble-squares-puzzles.html)     |
|       C#       |      ✓      | [codeproject.com](https://www.codeproject.com/Articles/815908/Solving-Scramble-Squares-Backtracking-Algorithm-in) |
|      Ruby      |             |                        [github.com](https://github.com/mattdsteele/scramblesquares-solver)                        |
|      Java      |      ✓      |                            [github.com](https://github.com/keilhauer/Legespiel-Solver)                            |
|     Python     |             |              [gist.github.com](https://gist.github.com/usrlocalben/b7070ece69f7d13bec161dbf5eb7549b)              |
|       C        |      ✓      |                         [sourceforge.net](https://sourceforge.net/projects/crazyturtle/)                          |
|      Icon      |             |                            [ereimer.net](http://ereimer.net/programs/bird-puzzle.icn)                             |

## License  <!-- omit in toc -->

This project is dedicated to the public domain under the CC0 1.0 Universal license. See [license text](LICENSE) for full
details.
