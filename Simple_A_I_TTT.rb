require_relative "Board_Logic.rb"

class Simple
	def get_move(board)
		available_spaces = get_available_spaces(board)
		available_spaces.sample
	end
end