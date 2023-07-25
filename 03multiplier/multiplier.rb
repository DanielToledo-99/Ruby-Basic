# Start printing the welcome message

# In the next line prompt the user for a number and leave the cursor on the same line.
# Save the user input in a variable.

# If the user input is not a number greater than 0, ask again until it is.

# Print the message "The first 20 multiples of <user_number> are:"

# Use some looping technique to print each multiple followed by a comma.
# The last one should be preceded by "and"
puts "My name is Multiplier and I will give you the first 20 multiples of any number"

number = 0
while number <= 0
  print "Choose a number greater than 0: "
  number = gets.chomp.to_i
end

puts "The first 20 multiples of #{number} are:"

(1..20).each do |count|
  if count < 20
    print count * number
    print ", "
    next
  end

  print "and "
  puts count * number
end