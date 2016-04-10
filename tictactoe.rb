def display_game_board(array)
	array
	puts """ 
	Game Board
	#{array[0]} | #{array[1]} | #{array[2]} 
   	-----------
   	#{array[3]} | #{array[4]} | #{array[5]}
	-----------
	#{array[6]} | #{array[7]} | #{array[8]} 
	"""
end

def start_game()
	puts "Would you like to play tic tac toe?"
	answer_game = gets.chomp

	if answer_game.upcase != "YES"
		puts "End Game"
		exit
	end
end

def player_one_marker()
	puts "Player 1, would you like to be X or O?"
	player_one_answer_for_x_or_o = gets.chomp

	if player_one_answer_for_x_or_o.upcase == "X"
		puts "Player 1 has chosen X."
	elsif player_one_answer_for_x_or_o.upcase == "O"
		puts "Player 1 has chosen O"
	else
		puts "End Game"
		exit
	end
	player_one_answer_for_x_or_o.upcase
end

def player_two_marker(p1)
	if p1 == "X"
		"O"
	else
		"X"
	end
end

def player_one_choose_first_move()
	puts "Player 1, make your move."
	player_one_first_move = gets.chomp
	player_one_first_move.to_i
end

def player_two_choose_first_move()
	puts "Player 2, make your move."
	player_two_first_move = gets.chomp
	player_two_first_move.to_i
end


