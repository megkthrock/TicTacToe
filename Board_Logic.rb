def create_new_game_board
	board_array = [1, 2, 3, 4 ,5 ,6 , 7, 8, 9]
end

def update_game_board(game_board, position, marker)
	game_board[position] = marker
	game_board
end

def valid_position?(game_board, position)
	game_board[position] == position + 1
end

def has_game_been_won?(game_board, marker)
	if game_board[0] == marker && game_board[3] == marker && game_board[6] == marker || 
	game_board[1] == marker && game_board[4] == marker && game_board[7] == marker || 
	game_board[2] == marker && game_board[5] == marker && game_board[8] == marker ||
	game_board[0] == marker && game_board[1] == marker && game_board[2] == marker || 
	game_board[3] == marker && game_board[4] == marker && game_board[5] == marker || 
	game_board[6] == marker && game_board[7] == marker && game_board[8] == marker || 
	game_board[0] == marker && game_board[4] == marker && game_board[8] == marker || 
	game_board[2] == marker && game_board[4] == marker && game_board[6] == marker
		true
	else
		false
	end
end

def has_game_been_tied?(game_board)
	game_board.all? do |value|
		value.is_a?(String) == true
	end
end

def game_over?(game_board, marker)
	has_game_been_won?(game_board, marker) ||
	has_game_been_tied?(game_board)
end

def get_available_spaces(board)
	available_spaces = []
	board.each do |value|
		if value.is_a?(Fixnum)
			available_spaces << value
		end
	end
	available_spaces
end















