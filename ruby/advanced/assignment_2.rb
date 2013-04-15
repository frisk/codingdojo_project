class MathDojo
	def initialize
		@sum = 0
	end
	def add *rest
		rest.each do |i|
			if i.kind_of?(Array)
				i.each{|r| @sum += r}
			elsif
				@sum += i
			end
		end
		self
	end
	def subtract *rest
		rest.each do |i|
			if i.kind_of?(Array)
				i.each{|r| @sum -= r}
			elsif
				@sum -= i
			end
		end 
		self
	end
	def result
		@sum
	end
end

puts MathDojo.new.add(2).add([2, 5, 4], [4, 8, 6]).subtract(3, 2).result