require 'pry'

INITAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop: enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(brd)}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

## The solution below was my first stab at solving Problem 3. Computer AI: Defense
# def computer_places_piece!(brd)
#   square = nil
#   WINNING_LINES.each do |line|
#     if (brd[line[0]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER && brd[line[2]] == INITAL_MARKER)
#       square = line[2]
#       break
#     elsif
#       (brd[line[2]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER && brd[line[0]] == INITAL_MARKER)
#       square = line[0]
#       break
#     else
#       square = empty_squares(brd).sample
#     end
#   end
#   brd[square] = COMPUTER_MARKER
# end

# Function from 'possible solution' in assignment
def computer_places_piece!(brd)
  square = nil

  # Offense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, COMPUTER_MARKER)
      break if square
    end
  end

  # Defense
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end

  if !square
    if brd[5] == INITAL_MARKER
      square = 5
    end
  end

  #Random
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

# Function from 'possible solution' in assignment
def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select {|key, value| line.include?(key) && value == INITAL_MARKER}.keys.first
  else
    nil
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    # end

    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(brd, punct=", ", combiner="or ")
  empty_squares(brd).join("#{punct}").insert(-2, "#{combiner}")
end

# def place_piece!(brd, player)
#   if player == 'Player'
#     player_places_piece!(brd)
#   elsif player = 'Computer'
#     computer_places_piece(brd)
#   end  
# end

# def alternate_player(curr_player)
#   if curr_player == ' '
#     'Player'
#   elsif curr_player == 'Player'
#     'Computer'
#   elsif curr_player == 'Computer'
#     'Player'
#   end
# end

player_wins = 0
computer_wins = 0

## This allows the player to choose who goes first
prompt "Who should go first? Please enter P for Player or C for Computer: "
goes_first = gets.chomp.downcase

## This code allows the computer to choose who goes first:
# goes_first = [1, 2].sample

loop do
  board = initialize_board

  loop do
    display_board(board)
  
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  
    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end 

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    if detect_winner(board) == 'Player'
      player_wins += 1
    else
      computer_wins += 1
    end
  else
    prompt "It's a tie!"
  end

  if player_wins == 5
    prompt "Player has won the series!"
    break
  elsif computer_wins == 5
    "Computer has won the series!"
    break
  end

  prompt "The current score is Player: #{player_wins} and Computer: #{computer_wins}."
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
