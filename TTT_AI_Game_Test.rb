require "minitest/autorun"
require_relative "TTT_AI_Game.rb"

class TestTTTAIGame <Minitest::Test

	def test_TTT_is_working
		assert_equal(true, play_game)
	end
end