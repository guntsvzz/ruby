numbers = []

for i in 1..10
  puts "Enter integer ##{i}:"
  input = gets.to_i
  numbers.push(input) #append
end

# Positive numbers
positive_numbers = numbers.select { |num| num > 0 }
# Negative numbers
negative_numbers = numbers.select { |num| num < 0 }
# Odd numbers 
odd_numbers = numbers.select { |num| num.odd? }
# Even numbers 
even_numbers = numbers.select { |num| num.even? }

# Display the results
puts "Positive numbers: #{positive_numbers}"
puts "Negative numbers: #{negative_numbers}"
puts "Odd numbers: #{odd_numbers}"
puts "Even numbers: #{even_numbers}"
