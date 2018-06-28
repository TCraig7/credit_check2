require_relative './credit_check'

puts "Hi there, do you want to check to see if a credit card number is valid? If so, enter the card number below:"
puts "\n"
print '> '

card_number = gets.chomp

puts "Thinking..."
sleep(1)
puts "\n"

credit_check = CreditCheck.new

puts credit_check.validation_output(card_number)
