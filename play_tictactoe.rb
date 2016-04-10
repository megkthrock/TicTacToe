require_relative "tictactoe.rb"


board_array = [1,2,3,4,5,6,7,8,9]

start_game()

player_one = player_one_marker()

player_two = player_two_marker(player_one)

puts "Player two is #{player_two}."

display_game_board(board_array)

player_one_first_move = player_one_choose_first_move

board_array[player_one_first_move - 1] = player_one

display_game_board(board_array)

player_two_first_move = player_two_choose_first_move

board_array[player_two_first_move - 1] = player_two

display_game_board(board_array)


