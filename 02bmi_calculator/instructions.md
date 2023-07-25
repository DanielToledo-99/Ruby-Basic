# BMI Calculator

This program should ask the user for they weight and height and reply with their
BMI and a message based on their underweight, normal weight, or overweight.

In this example, the user inputs `80` for their weight and `1.85` for their
height.

```bash
$ ruby bmi_calculator.rb
How much do you weigh? (don't lie)
80
How tall are you? (barefoot)
1.85
Right now your BMI is 23.37
You have a normal weight, I have healthy envy of you
$
```

If you don't know how to calculate the BMI you can click
[here](http://letmegooglethat.com/?q=bmi+formula)

The BMI should have 2 decimal places.

Use the following ranges for the final message:

If BMI is less than 18.5 -> 'You are underweight, add more potato to the broth'

If BMI is greater than or equal to 18.5 but less than 25 -> 'You have a normal
weight, I have healthy envy of you'

If BMI is greater than or equal to 25 -> 'You are overweight, I know, the
pandemic has affected us all'

Assume that the user will input valid numbers.

Modify the file `bmi_calculator.rb` to meet the requirements.

## Tests

To run the test, make sure you are in `/02bmi_calculator` directory and execute
`ruby bmi_calculator_test.rb`

<aside> 👀 Don't forget to run rubocop until you get no offenses. Then, commit
your changes and mark this exercise as completed. </aside>
