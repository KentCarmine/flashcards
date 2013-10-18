class FlashPresenter

  def display_card(card)
    puts
    puts card.definition
    puts
  end

  def user_guess
    print "Guess the answer: "
    gets.chomp
  end

  def display_t_f(true_false)
    puts
    puts true_false ? "CORRECT" : "THAT'S FALSE LITTLE YO"

    puts
    puts "================================================"
  end 

  def quit_prompt
    puts "Enter \"exit\" to quit."
  end
end
