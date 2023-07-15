VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_ABBREV = ['r', 'p', 's', 'l']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'lizard' && second == 'spock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  elsif prompt("It's a tie!")
  end
end

def convert_choice(abbrev)
  if abbrev.start_with?('r')
    abbrev.replace('rock')
  elsif abbrev.start_with?('p')
    abbrev.replace('paper')
  elsif abbrev.start_with?('l')
    abbrev.replace('lizard')
  elsif abbrev.start_with?('s')
    prompt("Please clarify. Do you want spock or scissors?")
    holder = Kernel.gets().chomp()
    abbrev.replace(holder)
  end
end

player_wins = 0
computer_wins = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    elsif VALID_ABBREV.include?(choice)
      convert_choice(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_wins += 1
  elsif win?(computer_choice, choice)
    computer_wins += 1
  end

  if player_wins >= 3
    prompt("You have won the match!")
    break
  elsif computer_wins >= 3
    prompt("The computer has won the match!")
    break
  else
    prompt("Continue playing to try and win the match!")
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
