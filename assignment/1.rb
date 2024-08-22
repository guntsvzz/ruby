def factorial(n)
  return 1 if n == 0 || n == 1 # Return 1 if n is 0 or 1, as 0! and 1! are both 1
  result = 1
  # Making Iterative
  for i in 2..n
    result *= i
  end
  result
end

# Display the results
puts "Enter an integer:"
input = gets.chomp

if input =~ /\A\d+\z/
  number = input.to_i
  puts "The factorial of #{number}! is #{factorial(number)}"
else
  puts "Please insert a number"
end
