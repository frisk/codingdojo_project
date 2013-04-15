
# x = {"first_name" => "Randall", "last_name" => "Frisk"}
y = {:first_name => "Randall", :last_name => "Frisk"}
puts "Y is ", y

puts y[:first_name],y[:last_name]

puts x["first_name"], x["last_name"]
puts "Your last name is Frisk" if x["last_name"].eql? "Frisk"