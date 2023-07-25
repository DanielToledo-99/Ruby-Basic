# Cash

> This exercise is also borrowed from CS50, the Harvard introductory course to
> computer science. This will continue happening for sure 😁

This program should help you figure out how is the least amount of coins you
need to give change.

We will use Peruvian coins (centimos) instead of US cents. The program should
ask how many **"soles"** you owed as change. This number could be a float
number. For example `5.3` (5 soles and 30 centimos). Assuming that we have coins
of 1 sol, 50 centimos, 20 centimos, and 10 centimos, which is the minimum amount
of coins we need to give back for 5 soles and 30 centimos?

This problem could be solved using a
"[greedy algorithm](https://en.wikipedia.org/wiki/Greedy_algorithm)". This type
the algorithms always takes the next available best choice reducing the problem
as much as it can in each step. It doesn't guarantee an optimal solution because
the `local` optimal solution could not be the `global` optimal solution. But in
this case, this strategy will be optimal 💪🏼

So, if we want to take first the best option we should start with the coin with
the biggest value, in this case with coins of 1 sol.

For 5.3 we can take 5 coins of 1 sol and the remainder will be 30 centimos. Then
we take 1 coin of 20 centimos and the new reminder is 10 centimos. Finally, we
take 1 coin of 10 centimos and we are done. In total, we needed 7 coins.

The program should behave in this way. If the user inputs 5.30 then the program
responds with `7` (number of coins)

```bash
$ ruby cash.rb
Change owed: 5.30
7
$
```

If the user inputs 7.6 then the program responds with `9`

```bash
$ ruby cash.rb
Change owed: 7.6
9
$
```

In this last example, the program prompted the user until it got a non-negative
number. Notice as well that the program should round the number to one decimal
place (we don't have coins of 5 centimos or 1 centimo).

```bash
$ ruby cash.rb
Change owed: -5
Change owed: strings
Change owed: $anything
Change owed: 0.45
1
$
```

> It could be easier to work with centimos (integers) than with soles (floats)
> 👀

## Tests

To run the test, make sure you are in `/05cash` directory and execute
`ruby cash.rb`

## Extra guidance

CS50 has a more in-depth walkthrough of this problem. You can check it
[here](https://cs50.harvard.edu/x/2021/psets/1/cash/).

> Remember that CS50 uses C instead of ruby. This exercise in CS50 uses US coins
> so is not exactly the same exercise.

<aside> 👀 Don't forget to run rubocop until you get no offenses. Then, commit
your changes and mark this exercise as completed. </aside>
