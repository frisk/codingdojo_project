# exersise

=begin
	this is for long
	comment blocks
=end

puts "hello"
puts "Coding"
puts "Dojo"

print "hello"
print "Coding"

BEGIN{
	puts "this is in the begin block"
}

END{
	puts "this is in the end block"
}

x = 5; y = 10; z = x+y
puts z

first_name = "Randall"
last_name = "Frisk"

# different ways to concatenate a string with a string
puts "First name is #{first_name} and last name is #{last_name}"
puts "First name is %s and last name is %s" % [first_name, last_name]
puts "Your Name is "+first_name+" "+last_name

z = 50

## ruby uses elsif instead of elseif

if z < 60
	puts "x is less than 60"
elsif x > 60 and x != 0
	puts "x is greater than 60 and not 0"
else
	puts "x is amazing"
end

x = 5

# you can use if and unless at the end of statements
puts "x is not 2" if x != 2 
puts "x is greater than 2" if x > 2
puts "x is not 2" unless x==2

# switch statement
age = 5

case age
when 0..2
	puts "baby"
when 3..6
	puts "little child"
when 7..12
	puts "child"
when 12..18
	puts "teenager" 
end

#loops
# while
i = 0
num = 5
begin
	puts "Inside the loop i = #{i}"
	puts "$i is not 3" unless i==3
	i +=1
end while i < num

# for
for i in 0..5
	puts "Value fo local variable is #{i}"
	puts "i is now 3!!" if i==3
end

#different ways to concatenate a integer variable into a string
puts "Value of z is #{z}"
puts "Value of z is %d" % [z]
puts "Value of z is %d" % z

#escaping quotes and adding new lines & tabs.
puts "I \t \nam 5'10\" tall"
