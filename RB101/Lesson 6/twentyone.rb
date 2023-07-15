require 'pry'

deck = [['A', 'S'], ['K', 'S'], ['Q', 'S'], ['J', 'S'], ['10', 'S'], ['9', 'S'], ['8', 'S'], ['7', 'S'], ['6', 'S'], ['5', 'S'], ['4', 'S'], ['3', 'S'], ['2', 'S'],
        ['A', 'H'], ['K', 'H'], ['Q', 'H'], ['J', 'H'], ['10', 'H'], ['9', 'H'], ['8', 'H'], ['7', 'H'], ['6', 'H'], ['5', 'H'], ['4', 'H'], ['3', 'H'], ['2', 'H'],
        ['A', 'D'], ['K', 'D'], ['Q', 'D'], ['J', 'D'], ['10', 'D'], ['9', 'D'], ['8', 'D'], ['7', 'D'], ['6', 'D'], ['5', 'D'], ['4', 'D'], ['3', 'D'], ['2', 'D'],
        ['A', 'C'], ['K', 'C'], ['Q', 'C'], ['J', 'C'], ['10', 'C'], ['9', 'C'], ['8', 'C'], ['7', 'C'], ['6', 'C'], ['5', 'C'], ['4', 'C'], ['3', 'C'], ['2', 'C']]

players_cards = []
dealers_cards = []

def msg(message)
  puts "=>#{message}"
end

def initialize_deal(deck, players_cards, dealers_cards)
  loop do
    deal(deck, players_cards)
    deal(deck, dealers_cards)

    break if dealers_cards.count == 2
  end
end

def deal(deck, cards)
  sampled_card = deck.sample.flatten
  deck.delete(sampled_card)
  cards << sampled_card
  cards
end

def total(cards)
  total = 0

  values = cards.map { |card| card[0] }
  values.each do |value|
    if value == 'A'
      total += 11
    elsif value.to_i == 0
      total += 10
    else
      total += value.to_i
    end
  end

  values.select { |value| value == 'A' }.count.times do
    total -= 10 if total > 21
  end

  total
end

def busted?(user_total)
  if user_total > 21
    true
  end
end

def display_player_cards(players_cards)
  if players_cards.size == 2
    msg "You have: #{players_cards}"
  else
    msg "You now have: #{players_cards}"
  end
end

def display_dealer_cards(dealers_cards)
  if dealers_cards.size <= 2
    msg "Dealer has: #{dealers_cards[0][0]} and unknown card"
  else
    msg "Dealer has: #{dealers_cards}"
  end
end

def players_turn(deck, players_cards)
  deal(deck, players_cards)
end

def dealers_turn(deck, dealers_cards)
  deal(deck, dealers_cards)
end

def inital_winner?(players_total, dealers_total, dealers_cards)
  if players_total == 21
    msg "Player has blackjack! You win!"
    true
  elsif dealers_total == 21
    msg "Dealer has: #{dealers_cards}"
    msg "Dealer has blackjack. You lose!"
    true
  end
end

def winner?(players_total, dealers_total)
  puts "------------------------------"
  msg "Your final total is: #{players_total}."
  msg "The dealer's final total is #{dealers_total}."
  puts "------------------------------"
  if busted?(players_total)
    msg "You busted! Dealer wins."
    puts "------------------------------"
  elsif busted?(dealers_total)
    msg "Dealer busts! You win"
    puts "------------------------------"
  elsif players_total > dealers_total
    msg "You win!"
    puts "------------------------------"
  elsif players_total == dealers_total
    msg "Push."
    puts "------------------------------"
  else
    msg "Dealer wins."
    puts "------------------------------"
  end
  true
end

## Initializes deck and player totals
loop do
  puts ".......Welcome to BLACKJACK......."
  msg "Shuffling cards...."
  initialize_deal(deck, players_cards, dealers_cards)
  players_total = total(players_cards)
  dealers_total = total(dealers_cards)

  loop do
    display_dealer_cards(dealers_cards)
    display_player_cards(players_cards)
    break if inital_winner?(players_total, dealers_total, dealers_cards)

    loop do # Start of Player's Turn
      answer = ''
      loop do # Validation for correctly inputting hit or stay
        msg "Your total is #{players_total}."
        msg "Hit or stay?"
        answer = gets.chomp
        if answer == 'stay' || answer == 'hit'
          break
        else
          msg "Please enter a valid selection!"
        end
      end

      break if answer == 'stay'

      msg "You hit!"
      players_turn(deck, players_cards)
      display_player_cards(players_cards)
      players_total = total(players_cards)

      break if busted?(players_total)
    end # End of Player's Turn

    msg "You stayed at #{players_total}"
    puts "------------------------------"
    msg "Dealer's turn..."

    loop do # Start of Dealer's Turn
      if dealers_total >= 17
        msg "Dealer stays"
        puts "------------------------------"
        break
      elsif busted?(dealers_total)
        msg "Dealer busts!"
        puts "------------------------------"
        break
      end

      msg "The dealer hits!"
      dealers_turn(deck, dealers_cards)
      display_dealer_cards(dealers_cards)
      dealers_total = total(dealers_cards)
      msg "The dealers total is: #{dealers_total}"
      break if busted?(dealers_total)
    end # End of Dealer's Turn

    break if winner?(players_total, dealers_total)
  end
  # Prompt to ask if user wants to play again validation
  response = ''
  loop do
    msg "Would you like to play again? (Y/N)"
    response = gets.chomp.downcase
    if response == "y" || response == "n"
      break
    else
      msg "Please enter a valid response!"
    end
  end
  # Determination if user is playing again or not
  if response == 'y'
    players_cards.clear
    dealers_cards.clear
  end
  if response == 'n'
    puts "Thank you for playing!"
    break
  end
end
