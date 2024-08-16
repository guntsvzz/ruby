
# Print the first ten numbers in fibonacci sersies
# Expect output: 1 1 2 3 5 8 13 21 34 55 89
# USE ONE puts statement only

# Initialize the first two Fibonacci numbers
a = 1
b = 1

# Generate and print the next 9 Fibonacci numbers
for _ in 1..11
  puts b
  c = a
  a = a + b
  b = c
end

puts "############"

# Array
arr = [1, 2, "Thailand"]

puts arr[2]

arr.push(55) #append
# puts arr
# arr.pop #-1
puts arr
puts "############"
arr.each do |element|
  puts element
end
puts "####Dictionary########"
# Dictionary
foods = {
  "thailand": "pad thai",
  "nepali": "momo"
}

puts foods[:nepali]

puts foods[:thailand]

foods.each do |key, value|
  puts " COuntry : #{key} Food : #{value}"
end