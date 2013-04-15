class CodingDojo 
  
  ## when @@ available for all the functions and instances
  @@no_of_branches = 0 

  # initializes the class aka constructor
  def initialize(id, name, address) 

    #instance variables are initialized with @ symbol
    @branch_id = id 
    @branch_name = name 
    @branch_address = address 
    @@no_of_branches += 1 
    puts "\nCreated branch #{@@no_of_branches}" 
  end 
  
  def hello 
    puts "Hello CodingDojo!" 
  end 

  def displayAll 
    puts "Branch ID: %d" % @branch_id 
    puts "Branch Name: %s" % @branch_name 
    puts "Branch Address: %s" % @branch_address 
  end 
end 

# now using above class to create objects 
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA") 
branch.displayAll
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA") 
branch2.displayAll
branch3 = CodingDojo.new(255, "Sacramento CodingDojo", "Sacramento CA");
branch3.hello
branch3.displayAll