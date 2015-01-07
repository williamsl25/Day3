puts "What is your name"
name = gets.chomp
puts "Your name is #{name}!"
puts "Tic tac toe."

# Draw a board
# Asks for user to pick a location
# Draws an X in said location
# Asks next user to pick a location
# Draws an O in said location
# Repeat until 3 in a row/diagonal
@gameon = true
board = [
	[0,0,0],
	[0,0,0],
	[0,0,0]
] 

def draw_board board, playername
	# board[0][0] == 0 ? "" : "X"
	puts playername
	puts "#{draw_space(board[0][0])}|#{draw_space(board[0][1])}|#{draw_space(board[0][2])}"
	puts '-----'
	puts "#{draw_space(board[1][0])}|#{draw_space(board[1][1])}|#{draw_space(board[1][2])}"
	puts '-----'
	puts "#{draw_space(board[2][0])}|#{draw_space(board[2][1])}|#{draw_space(board[2][2])}"

end

def draw_space board_space
	if board_space == 0
		' '
	elsif board_space == 1
		'X'
	elsif board_space == 2
		'O'
	end

	# return "hey Ryan!"
	# "hey Ryan!" - you do not need the return!
	# puts "Hey"
	# board_space + " you're cool! "
end

def pick_location board, player
	puts "Pick a location (1-9):"
	location = gets.chomp.to_i
	if location == 1 && board[0][0] == 0
		board[0][0] = player
	elsif location == 2 && board[0][1] == 0
		board[0][1] = player
	elsif location == 3 && board[0][2] == 0
		board[0][2] = player
	elsif location == 4 && board[1][0] == 0
		board[1][0] = player
	elsif location == 5 && board[1][1] == 0
		board[1][1] = player
	elsif location == 6 && board[1][2] == 0
		board[1][2] = player
	elsif location == 7 && board[2][0] == 0
		board[2][0] = player
	elsif location == 8 && board[2][1] == 0
		board[2][1] = player
	elsif location == 9 && board[2][2] == 0
		board[2][2] = player
	else
		puts "Pick a new location"
		pick_location(board, player)
	end

end

# puts draw_space(board[0][1])
# 10.times do
# 	draw_board
# end


# [12,3,4,5].each do |number|
# 	puts number
# end


def winning_location board 
	if board[0][0] == 1 && board[0][1] ==1 && board[0][2] == 1
		puts "X Wins"
		@gameon = false
	end

	if board[0][0] == 2 && board[0][1] ==2 && board[0][2] == 2
		puts "O Wins"
		@gameon = false
	end


	if board[1][0] == 1 && board[1][1] ==1 && board[1][2] == 1
		puts "X Wins"
		@gameon = false
	end

	if board[1][0] == 2 && board[1][1] ==2 && board[1][2] == 2
		puts "O Wins"
		@gameon = false
	end


	if board[2][0] == 1 && board[2][1] ==1 && board[2][2] == 1
		puts "X Wins"
		@gameon = false
	end

	if board[2][0] == 2 && board[2][1] ==2 && board[2][2] == 2
		puts "O Wins"
		@gameon = false
	end


	if board[0][0] == 1 && board[1][0] ==1 && board[2][0] == 1
		puts "X Wins"
		@gameon = false
	end

	if board[0][0] == 2 && board[1][0] ==2 && board[2][0] == 2
		puts "O Wins"
		@gameon = false
	end


	if board[0][1] == 1 && board[1][1] ==1 && board[2][1] == 1
		puts "X Wins"
		@gameon = false
	end

	if board[0][1] == 2 && board[1][1] ==2 && board[2][1] == 2
		puts "O Wins"
		@gameon = false
	end


	if board[0][2] == 1 && board[1][2] ==1 && board[2][2] == 1
		puts "X Wins"
		@gameon = false
	end

	if board[0][2] == 2 && board[1][2] ==2 && board[2][2] == 2
		puts "O Wins"
		@gameon = false
	end


	if board[0][0] == 1 && board[1][1] ==1 && board[2][2] == 1
		puts "X Wins"
		@gameon = false
	end

	if board[0][0] == 2 && board[1][1] ==2 && board[2][2] == 2
		puts "O Wins"
		@gameon = false
	end


	if board[2][0] == 1 && board[1][1] ==1 && board[0][2] == 1
		puts "X Wins"
		@gameon = false
	end

	if board[2][0] == 2 && board[1][1] ==2 && board[0][2] == 2
		puts "O Wins"
		@gameon = false
	end

end

while @gameon
	player = 1
	draw_board(board, name)
	pick_location(board, player)
	winning_location(board)

	player = 2
	draw_board(board, name)
	pick_location(board, player)
	winning_location(board)
	# parenthesis are not necessary
end
puts "You are the Winner!"

# first_name = "Lindsay"
# last_name = "Williams"
# puts "#{person1[:first_name]} #{person1[:last_name]}"
# puts "#{person2[:first_name]} #{person2[:last_name]}"


# def full_name person
# 	puts "#{person[:first_name]} #{person[:last_name]}"
# end

# person1 = {
# 	first_name: "Lindsay",
# 	last_name: "Williams"
# }

# person2 = {
# 	first_name: "Nick",
# 	last_name: "Bucciarelli"

# }

# person3 = {
# 	first_name: "Sally",
# 	last_name: "Kingston"

# }

# person4 = {
# 	first_name: "Calvin",
# 	last_name: "Webset"

# }


# full_name(person1)
# full_name(person2)
# full_name(person3)
# full_name(person4)



