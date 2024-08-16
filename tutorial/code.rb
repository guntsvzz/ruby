# Print and Input Function
puts "Enter your name"
name = gets # takes name input
puts "Hello, #{name}" # directly include variable in the output string

puts "What is your age?"
age = gets # takes age input
new_age=age.to_i + 10 # to_i method converts string into integer
puts "Your age will be #{age.to_s} in 10 years" # to_s converts integer into string


#while
i = 1 
while i < 10 do
    puts i 
    i = i +1
end

#for loop
for i in 1..10
    puts i
end