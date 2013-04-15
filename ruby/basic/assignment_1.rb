

def op(num1, num2)
	operations = {:Addition => 0, :Subtraction => 1, :Multiplication => 2, :Division => 3}	
	operand = operations.key(rand(0..3))
	print "The answer is "

	print num1+num2 if operand == :Addition
	print num1-num2 if operand == :Subtraction
	print num1*num2 if operand == :Multiplication
	print num1/num2 if operand == :Division 
	puts ""
	puts "Operation used is #{operand}"
	
end
puts "Enter the first number"
a = gets.chomp
puts "Enter the second number"
b = gets.chomp

op(a.to_i, b.to_i)