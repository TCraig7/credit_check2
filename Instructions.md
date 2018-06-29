## Iteration 1 - The Luhn Algorithm
Start with this template and save it as ```credit_check.rb``` in your ```lib``` directory:

```
card_number = "4929735477250543"

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
```

**Sample Data**

If helpful, you can use the following sample data:

- Valid: 5541808923795240, 4024007136512380, 6011797668867828
- Invalid: 5541801923795240, 4024007106512380, 6011797668868728

## Iteration 2 - Github and Classes

- Create a repository on Github and push your algorithm to it. From here on, all your code should be hosted on Github.

- Create a class that responds to the following interaction pattern:

```
credit_check = CreditCheck.new
=> #<CreditCheck:0x00007fe82d2a8a38>
credit_check.valid_number?(5541808923795240)
=> true
credit_check.valid_number?(5541801923795240)
=> false
credit_check.validation_output(5541808923795240)
=> "The number 5541808923795240 is valid"
credit_check.validation_output(5541801923795240)
=> "The number 5541801923795240 is invalid"
```

**note on interaction patterns:** this means that you should be able to open a pry session, require the file with your class, for instance ```require './credit_check',``` and type in the lines of code above exactly and get the same output in your pry session.

## Iteration 3 - Branching and Minitest
- Create a branch in your local git repo called ```testing```

- Create a Minitest test that accurately covers the expected behavior of your CreditCheck class

- Push the branch up to your Github repository and merge the branch using a Pull Request

## Iteration 4 - Extensions
- Create a command line interface that allows the user to validate a number

- Add functionality to calculate the check sum digit.

- Can you make it work for American Express numbers? 342804633855673 is valid but 342801633855673 is invalid
