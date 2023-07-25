# Multiplier

This program should ask the user for a number greater than 0 and reply with the
first 20 multiples of that number.

In this example, the user inputs `5`.

```bash
$ ruby multiplier.rb
My name is Multiplier and I will give you the first 20 multiples of any number
Choose a number greater than 0: 5
The first 20 multiples of 5 are:
5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, and 100
$
```

Notice how the program asks for the number and waits for the user input in the
same line.

Also notice that before printing all the multiples it prints a message that
includes the user number: "The first 20 multiples of `<user_number>` are:"

Finally, notice how the last multiple is preceded by the word "and". In the
example `"...94, 95, and 100"`

Modify the file `multiplier.rb` to meet the requirements.

## Tests

To run the test, make sure you are in `/03multiplier` directory and execute
`ruby multiplier_test.rb`

<aside> 👀 Don't forget to run rubocop until you get no offenses. Then, commit
your changes and mark this exercise as completed. </aside>
