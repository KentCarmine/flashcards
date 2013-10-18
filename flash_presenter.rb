# require "./flash_stack.rb"
# require "./flashcard.rb"


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


# m = FlashPresenter.new
# m.display_card( FlashCard.new(:definition => "is it or not", :term => "badass"))

# m.user_guess
# m.display_t_f(true)
