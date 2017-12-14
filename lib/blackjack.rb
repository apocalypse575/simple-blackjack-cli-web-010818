def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
    print display_card_total(sum)
      return sum
end

def hit?(card_total)
  prompt_user
  until card_total >= 22
  answer = get_user_input
  if answer == 's'
        return card_total
  elsif answer == 'h'
    new_card = deal_card
    card_total += new_card
    return card_total
  else
    invalid_command
  end
  puts 'End of Game!'
end
end

def invalid_command
  puts "Please enter a valid command"
end

def runner(card_total)
  welcome
  initial_round
  total = card_total
until total >= 22
  hit?
  display_card_total
end
  end_game
end

runner(card_total)

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
