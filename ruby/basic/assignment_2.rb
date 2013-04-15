numbers = [3,5,1,2,7,9,8,13,25,32]
puts "sum numbers"
puts numbers.reduce(:+)
puts "numbers with value > 10"
puts numbers.find_all{|i| i > 10}

names = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
puts "names with char count > 5"
puts names.find_all{|i| i.length > 5}

alphabet =  ("a".."z").collect{|i| i}
vowels = ["a", "e", "i", "o", "u"]

puts "last letter in alphabet shuffle"
puts alphabet.shuffle.last
puts "first letter in alphabet shuffle"
first_letter = alphabet.shuffle.first
puts first_letter

puts "the first item is a vowel" if vowels.include?(first_letter)

puts 10.times.map{rand(55..100)}
puts "10 random numbers (55-100) sorted"
num_rand = 10.times.map{rand(55..100)}.sort{|a,b| a <=> b}
puts num_rand
puts "max value"
puts num_rand.max
puts "min value"
puts num_rand.min

puts "random string 5 characters long"
puts (1..5).map{((65+rand(26)).chr)}.join
puts "array of 10 random strings 5 characters long"
str_array = 10.times.map{(1..5).map{(65+rand(26)).chr}.join}
puts str_array