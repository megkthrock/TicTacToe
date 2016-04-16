require_relative "Simple_A_I_TTT.rb"
require_relative "Sequential_A_I_TTT.rb"

def play_game(player1, player2, board)
	move = player1[:player_mode].get_move(board)
	board = update_game_board(board, move - 1, player1[:player_marker])
	if game_over?(board, player1[:player_marker])
		board
	else 
		play_game(player2, player1, board)
	end
end