# **Hello World**

This is the most famous program in the world. Used as the first example in
nearly every programming language for every programmer and now is your turn to
build it.

When executed, the program should print on the terminal the phrase
`"Hello World!"`

Ready? Go! 🎉

---

## Walkthrough

Since this is your first exercise, follow this guide to get familiar with the
workflow.

Navigate to `00hello_world` directory.

```bash
cd 00hello_world
```

Read `[instructions.md](http://instructions.md)` (this file 🙂). In this case,
is simple enough. We need to print "Hello world" on the screen.

To achieve that I would modify `hello_world.rb` and at the following:

```ruby
# Print "Hello World!" to the console :)
puts  'Hello World'
```

I can save the file and run my program executing in the terminal
`ruby hello_world.rb`. Let's see the result:

```bash
$ ruby hello_world.rb
Hello World
$
```

That's LGTM (short for Looks Good To Me). Let's find out if it passes the tests.
Run `ruby hello_world_test.rb`

```bash
$ ruby hello_world_test.rb
Run options: --seed 56804

# Running:

F

Failure:
HelloWorldTest#test_say_hello_world [00hello_world/hello_world_test.rb:11]:
Expected: "Hello World!"
  Actual: "Hello World"

rails test 00hello_world/hello_world_test.rb:6

Finished in 0.001260s, 793.6506 runs/s, 793.6506 assertions/s.
1 runs, 1 assertions, 1 failures, 0 errors, 0 skips
```

We have a Failure! The test `test_say_hello_world` failed. The `Expected` value
was "Hello World!" and the `Actual` value is "Hello World". It seems that the
`!` character is missing. Let's correct that and try again.

```ruby
# Print "Hello World!" to the console :)
puts  'Hello World!'
```

Ok, save the file and run the tests again:

```ruby
$ ruby hello_world_test.rb
Run options: --seed 19881

# Running:

.

Finished in 0.000962s, 1039.5012 runs/s, 1039.5012 assertions/s.
1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
```

🎉 Great! No failures. In this case, the test file has only one test and our
output shows one dot ("."). Each dot represents a passing test.

Now it's time to run `rubocop`.

```bash
$ rubocop
Running rubocop
Inspecting 14 files
C.............

Offenses:

00hello_world/hello_world.rb:2:5: C: Layout/ExtraSpacing: Unnecessary spacing detected.
puts  'Hello World!'
    ^
00hello_world/hello_world.rb:2:5: C:
puts  'Hello World!'
    ^^
00hello_world/hello_world.rb:2:7: C: Style/StringLiterals: Prefer double-quoted strings unless you need single quotes to avoid extra backslashes for escaping.
puts  'Hello World!'
      ^^^^^^^^^^^^^^
00hello_world/hello_world.rb:2:21: C: Layout/TrailingEmptyLines: Final newline missing.
puts  'Hello World!'


14 files inspected, 4 offenses detected, 4 offenses auto-correctable
```

![https://media.giphy.com/media/4jyU0IuAH6a1q/giphy.gif](https://media.giphy.com/media/4jyU0IuAH6a1q/giphy.gif)

A lot happened there. But don't worry, it's for your own good. What happened was
that [rubocop](https://rubocop.org/) kicked in and analyzed all the new changes
looking for code-style offenses. And the 1 line we wrote made 4 code-style
offenses. Let's see:

**The first 2 looks very similar:**

- Layout/ExtraSpacing: Unnecessary spacing detected.
- Layout/SpaceBeforeFirstArg: Put one space between the method name and the
  first argument.

We have more than one space between `puts` and `'Hello world!'`

**The next one:**

- Style/StringLiterals: Prefer double-quoted strings unless you need single
  quotes to avoid extra backslashes for escaping.

Rubocop says that is preferable `"Hello world!"` to `'Hello world!'`. Right now
there is no consensus on the community about this (50%-50%). The important thing
is to be consistent. For now, we will agree with rubocop.

**The last one:**

- Layout/TrailingEmptyLines: Final newline missing.

Ok, we need to add an empty line at the end of the file. Putting all together
our file looks now like this:

```ruby
# Print "Hello World!" to the console :)
puts "Hello World!"

```

Let's try it again.

```bash
$ rubocop
Running rubocop
Inspecting 14 files
..............

14 files inspected, no offenses detected
```

<aside>
🎉 Great! No more offenses. This is a good time to commit your changes

</aside>

Add your changes to the staging area

```bash
$ git add .
```

Commit your changes to your Git repository including a meaningful message

```bash
$ git commit -m "Add solution to Hello World exercise"
```

<aside>🔥 Now continue with the exercises 01 to 05 and complete 'em all!
🚀</aside>
