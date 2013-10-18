require "./flash_stack.rb"
require "./flashcard.rb"




class FlashPresenter
  def display_card(card)
    puts
    puts card.definition
    puts
  end

  def user_guess
    puts "Guess the answer:"
    puts
    gets.chomp
  end

  def display_t_f(true_false)
    puts
    if true_false
      puts "CORRECT"
    else 
      put "THAT'S FALSE "
    end
    puts
  end 
end


m = FlashPresenter.new
m.display_card( FlashCard.new(:definition => "is it or not", :term => "badass"))

m.user_guess
m.display_t_f(true)
