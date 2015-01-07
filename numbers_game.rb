puts "What is your name"
name = gets.chomp
puts "Your name is #{name}!"
puts "Numbers Game"

random_number = rand(1..100)
correct = 0 
@gameon = true

def number_game random_number, correct
	puts "Pick a number (1-100):"
	guess = gets.chomp.to_i

	if guess == random_number
		@gameon = false
		puts "Game Over"
	elsif guess < random_number
		puts "too low"
		
	elsif guess > random_number
		puts "too high"
	end
	
end


while @gameon && correct < 5
	number_game(random_number, correct)
	correct += 1
end
 puts "Game over!"


	




	
		


