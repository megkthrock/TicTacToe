require "minitest/autorun"
require_relative "Simple_A_I_TTT.rb"

class TestSimpleAI < Minitest::Test

	def test_last_available_space
		assert_equal(1, get_move([1, "X" , "X", "O", "X", "O" , "O", "X", "O"]))
		assert_equal(4, get_move(["O", "X" , "X", 4, "X", "O" , "O", "X", "O"]))
	end 

	def test_chooses_for_multiple_spaces_available
		assert_includes([1,2,3], get_move([1, 2 , 3, "O", "X", "O" , "O", "X", "O"]))
		refute_includes([4,5,6,7], get_move([1, 2 , 3, "O", "X", "O" , "O", "X", "O"]))
	end

end