require 'pry'
def welcome()
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card()
  # code #deal_card here
  rand 1..11
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
  total
end

def prompt_user()
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input()
  # code #get_user_input here
  response = gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round()
  # code #initial_round here
  total = deal_card() + deal_card()
  #binding.pry
  display_card_total(total)
  total
end

def hit?(initial_round_total)
  #code hit? here
  prompt_user()
  response = get_user_input()
  #binding.pry
  if response == "h"
    new_card = deal_card()
    new_total = new_card + initial_round_total
    #binding.pry
    elsif response == "s"
    return initial_round_total
    elsif response != "h" && response != "s"
    invalid_command()
    prompt_user()
    response = get_user_input
    
  end   
  
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner()
  # code runner here
  welcome()
  latest_total = initial_round()
  until latest_total > 21 do
    latest_total = hit?(latest_total)
    display_card_total(latest_total)
  end
  end_game(latest_total)

end
    
