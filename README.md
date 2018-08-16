# Project Euler

![Badge](https://projecteuler.net/profile/RetroCraft.png)

<small>Friend key: _1016354_r6MEMRkqR3xk7Ukr5onhjFWaIUwGaWxZ_</small>

Solutions to the Project Euler problems, in whatever languages I feel in the mood to write in.

Track how many problems have been solved on the auto-generated [markdown file](progress.md).

## Running solutions

Java solutions can be run with `scripts/run-problem.zsh`.

Mathematica (`.wls`) solutions can be run with `wolframscript` or directly from the command line.
These files also contain code-golfed solutions.

Haskell solutions can be run with `runghc` or compiled and run for optimum speed.

Build C++ solutions (and any compiled anything) to `bin/` since that gets gitignored.

Assorted random esoteric languages (like APL) aren't counted towards the progress counter and are included in `esoterics/`

## Timing solutions

Timings are stored in comments that match `/timing: \d+ (ns|ms)/` (milliseconds because Mathematica doesn't have a nanotimer).
One day I'll write a script that tracks these.

Timing output should also be directed to stderr instead of stdout, so repeated outputs can be sent to `/dev/null`.
