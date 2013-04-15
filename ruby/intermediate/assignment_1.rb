$monster1 = {"health" => 500}
$monster2 = {"health" => 500}

def monster_mash(monster)
	atck = rand(1..100)
	if monster == 1
		attacker = "monster1"
		attackee = "monster2"
		health = $monster1["health"] -= atck
	else
		attacker = "monster2"
		attackee = "monster1"
		health = $monster2["health"] -= atck
	end
	puts "#{attacker} attacks #{attackee} with #{atck} damage"
	puts "#{attackee}'s health is now #{health}/500"
end

round = 0
for i in 1..5
	puts "ROUND #{round+=1}:"
	monster_mash(1)
	monster_mash(2)
	puts ""
	if i == 5
		puts "monster1 wins the game" if $monster1["health"] > $monster2["health"]
		puts "monster2 wins the game" if $monster2["health"] > $monster1["health"]
	end
end