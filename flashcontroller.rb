require './flash_model.rb'
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
      guess = @presenter.user_guess 

      break if guess == "exit"
      
      guess_status = validate_guess(guess)
      @presenter.display_t_f(guess_status)

      @card.increment_attempts

      if guess_status
        @flash_stack.add_to_solved_deck(@card)
      else
        @flash_stack.add_to_unsolved_deck(@card)
      end

    end
    @presenter.display_statistics(@flash_stack.solved)
  end

  private
  attr_reader :flash_stack

end

raise ArgumentError unless ARGV.any?

flash_game = FlashController.new(ARGV[0])
flash_game.run!
