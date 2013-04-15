def it num, string
	print string*num
	n = yield
	puts n
	print string*num
	puts "\n"
end

any_test = ["ant", "bear", "cat"]
key_test = {:gorilla => "bear", :banana => "monkey"}
puts any_test.any?{ |word| word.length >= 10 }
it(12, "*"){print "each"}
it(12, "j"){ 25}
any_test.each{ |word| puts word, " "}
it(10, "$"){print "collect"} 
(1..9).collect{|animal| puts animal*animal/animal}
it(7, "#"){print "map"}
(1..9).map{|animal| puts animal*animal/animal}
it(7, "+"){print "detect"}
puts (1..10).detect{|q| q%5==0 and q%7==0}
puts (1..100).detect{|q| q%5==0 and q%7==0}
it(5, "%"){print "find_all"}
puts (1..10).find_all{|i| i % 3 == 0}
it(5, "&"){print "reject"}
puts (1..10).reject { |i| i % 3 == 0 } 
it(7, "@"){print "times"}
puts 6.times{|i| print i}
it(8, "^"){print "has_key"}
puts key_test.has_key?(:gorilla)
