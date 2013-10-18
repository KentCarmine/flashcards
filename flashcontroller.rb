require './flash_stack.rb'
require './flashcard.rb'

class FlashController

  def initialize(filename)
    @flash_stack = FlashStack.new
    @flash_stack.load(filename)
    @card = nil
  end

  def prompt_guess
    @card = flash_stack.remove!
    return :stack_empty if @card.nil?

    @card.definition
  end

  def guess(guess_str)
    return @card.term == guess_str
  end

  private
  attr_reader :flash_stack

end

flash_game = FlashController.new('flashcard_samples.txt')


