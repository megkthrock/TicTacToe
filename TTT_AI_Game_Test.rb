require "minitest/autorun"
require_relative "TTT_AI_Game.rb"

class TestTTTAIGame <Minitest::Test

	def test_TTT_is_over
		player1 = {:player_mode => Simple.new, :player_marker => "X"}
		player2 = {:player_mode => Sequential.new, :player_marker => "O"}
		board = create_new_game_board
		board = play_game(player1, player2, board)
		assert_equal(true, game_over?(board, "X") || game_over?(board, "O"))
	end

	def test_board_displays_correct_amount_of_integers
		player1 = {:player_mode => Simple.new, :player_marker => "X"}
		player2 = {:player_mode => Sequential.new, :player_marker => "O"}
		board = create_new_game_board
		board = play_game(player1, player2, board)
		available_spaces = get_available_spaces(board)
		assert_includes([1, 2, 3, 4], available_spaces.count)
	end
end