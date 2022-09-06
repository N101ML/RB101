require 'pry'

# clubs_in_deck = [['A', 'C'], ['K', 'C'], ['Q', 'C'], ['J', 'C'], ['10', 'C'], ['9', 'C'], ['8', 'C'], ['7', 'C'], ['6', 'C'], ['5', 'C'], ['4', 'C'], ['3', 'C'], ['2', 'C']]
# diamonds_in_deck = [['A', 'D'], ['K', 'D'], ['Q', 'D'], ['J', 'D'], ['10', 'D'], ['9', 'D'], ['8', 'D'], ['7', 'D'], ['6', 'D'], ['5', 'D'], ['4', 'D'], ['3', 'D'], ['2', 'D']]
# hearts_in_deck = [['A', 'H'], ['K', 'H'], ['Q', 'H'], ['J', 'H'], ['10', 'H'], ['9', 'H'], ['8', 'H'], ['7', 'H'], ['6', 'H'], ['5', 'H'], ['4', 'H'], ['3', 'H'], ['2', 'H']]
# spades_in_deck = [['A', 'S'], ['K', 'S'], ['Q', 'S'], ['J', 'S'], ['10', 'S'], ['9', 'S'], ['8', 'S'], ['7', 'S'], ['6', 'S'], ['5', 'S'], ['4', 'S'], ['3', 'S'], ['2', 'S']]
# deck = [clubs_in_deck, diamonds_in_deck, hearts_in_deck, spades_in_deck]

deck = [['A', 'S'], ['K', 'S'], ['Q', 'S'], ['J', 'S'], ['10', 'S'], ['9', 'S'], ['8', 'S'], ['7', 'S'], ['6', 'S'], ['5', 'S'], ['4', 'S'], ['3', 'S'], ['2', 'S'],
        ['A', 'H'], ['K', 'H'], ['Q', 'H'], ['J', 'H'], ['10', 'H'], ['9', 'H'], ['8', 'H'], ['7', 'H'], ['6', 'H'], ['5', 'H'], ['4', 'H'], ['3', 'H'], ['2', 'H'],
        ['A', 'D'], ['K', 'D'], ['Q', 'D'], ['J', 'D'], ['10', 'D'], ['9', 'D'], ['8', 'D'], ['7', 'D'], ['6', 'D'], ['5', 'D'], ['4', 'D'], ['3', 'D'], ['2', 'D'],
        ['A', 'C'], ['K', 'C'], ['Q', 'C'], ['J', 'C'], ['10', 'C'], ['9', 'C'], ['8', 'C'], ['7', 'C'], ['6', 'C'], ['5', 'C'], ['4', 'C'], ['3', 'C'], ['2', 'C']]

players_cards = []
dealers_cards = []

def initialize_deal(deck, pl_cards, deal_cards)
  loop do
    deal(deck, pl_cards)
    deal(deck, deal_cards)

    break if deal_cards.count == 2
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

  values.select { |value| value == 'A'}.count.times do
      total -= 10 if total > 21
    end

    total
end

def busted?(user_total)
  if user_total > 21
    return true
  end
end

def display_cards(pla_cards, deal_cards)
  system 'clear'
  puts "The dealer is showing: #{deal_cards[0]}"
  puts "Your cards are #{pla_cards}"
end

def players_turn(deck, pla_cards, deal_cards)
    deal(deck, pla_cards) 
    display_cards(pla_cards, deal_cards)
end

def dealers_turn(deck, deal_cards, pla_cards)
    deal(deck, deal_cards)
    display_cards(pla_cards, deal_cards)
end

def inital_winner?(pl_total, deal_total)
  if pl_total == 21
    puts "Player has blackjack! You win!"
    true
  elsif deal_total == 21
    puts "Dealer has blackjack. You lose!"
    true
  end
end

def winner?(pl_total, deal_total)

  puts "Your total is: #{pl_total}."
  puts "The dealer's total is #{deal_total}."

  if busted?(pl_total)
    puts "Dealer wins."
  elsif busted?(deal_total)
    puts "Dealer busts! You win"
  elsif pl_total > deal_total
    puts "You win!"
  elsif pl_total == deal_total
    puts "Push."
  else
    puts "Dealer wins."
  end
  true
end

## Initializes deck and player totals
initialize_deal(deck, players_cards, dealers_cards)
players_total = total(players_cards)
dealers_total = total(dealers_cards)

loop do
  display_cards(players_cards, dealers_cards)
  break if inital_winner?(players_total, dealers_total)

  loop do
    puts "Hit or stay?"
    answer = gets.chomp
    break if answer == 'stay'

    players_turn(deck, players_cards, dealers_cards)
    players_total = total(players_cards)
    break if busted?(players_total)
  end

  loop do
    break if dealers_total >= 17 || busted?(players_total)
    dealers_turn(deck, dealers_cards, players_cards)
    dealers_total = total(dealers_cards)
    break if busted?(dealers_total)
  end

  break if winner?(players_total, dealers_total)
end
