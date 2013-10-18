class FlashPresenter

  def display_card(card)
    puts
    puts card.definition
    puts
  end

  def user_guess
    print "Guess the answer: "
    $stdin.gets.chomp
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

  def display_statistics(deck)
    puts "================================================"
    puts "YOUR STATISTICS"
    puts

    deck.each do |card|
      display_card_statistics(card)
    end
    
    puts "================================================"
  end

  private

  def display_card_statistics(card)
    puts "It took you #{card.attempts} tries to guess \"#{card.term}\" correctly."
  end

end
