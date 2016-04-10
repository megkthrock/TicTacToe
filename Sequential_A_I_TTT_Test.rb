require "minitest/autorun"
require_relative "Sequential_A_I_TTT.rb"

class TestSequentialAI < Minitest::Test

	def test_chooses_first_available_space
		assert_equal(1, get_move([1, 2, 3, 4, 5, 6, 7, 8, 9]))
		assert_equal(4, get_move(["X", "O", "X", 4, 5, 6, 7, 8, 9]))
	end
end