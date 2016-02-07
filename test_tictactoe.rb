require "minitest/autorun"
require_relative "tictactoe.rb"

class TestTicTacToe <Minitest::Test
	
	def test_if_p1_chooses_x_then_p2_is_o
		player_one = "X"
		player_two = player_two_marker(player_one)
		assert_equal("O", player_two)
	end

	def test_if_p1_chooses_o_then_p2_is_x
		player_one = "O"
		player_two = player_two_marker(player_one)
		assert_equal("X", player_two)
	end

end