require_relative "Board_Logic.rb"

def get_move_simple(board)
	available_spaces = get_available_spaces(board)
	available_spaces.sample
end