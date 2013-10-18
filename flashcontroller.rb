require './flash_stack.rb'
require './flashcard.rb'
require './flash_presenter.rb'

class FlashController



  def initialize(filename, presenter = FlashPresenter.new)
    @flash_stack = FlashStack.new
    @flash_stack.load(filename)
    @card = nil
    @presenter = presenter
  end

  def prompt_guess
    @card = flash_stack.remove! 
    return :stack_empty if @card.nil?

    @presenter.display_card(@card)
  end

  def validate_guess(guess_str)
    return @card.term == guess_str
  end

  def run!
    @presenter.quit_prompt
    until flash_stack.empty?
      prompt_guess
      guess = @presenter.user_guess #FlashPresenter.user
      break if guess == "exit"
      guess_status = validate_guess(guess)
      @presenter.display_t_f(guess_status)
    end
  end

  private
  attr_reader :flash_stack

end

flash_game = FlashController.new('flashcard_samples.txt')
flash_game.run!


