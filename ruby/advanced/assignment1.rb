class MathDojo
	def initialize
		@sum = 0
	end
	def add *rest
		rest.each{ |i| @sum += i }
		self
	end
	def subtract *rest
		rest.each{ |i| @sum -= i }
		self
	end
	def result
		@sum
	end
end

puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).result