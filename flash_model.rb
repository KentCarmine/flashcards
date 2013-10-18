

class FlashStack 
  
  def initialize
    @deck = []
    @solved = []
  end
  
  def load(filename)
    File.open(filename, "r") do |file|
      file.each_slice(3) do |row| 
        temp_hash = { :definition => row[0].chomp, :term => row[1].chomp}
      @deck << FlashCard.new(temp_hash)
    end
    shuffle_deck
  end
  
  def add_to_solved_deck(card)
    @solved << card
  end

  def add_to_unsolved_deck(card)
    @deck << card
  end

  def remove!
    @deck.shift
  end

  def empty?
    @deck.empty?
  end

  private

  def shuffle_deck
    @deck.shuffle!
  end

end


# FlashStack.new.load

class FlashCard

  attr_reader :definition, :term, :attempts

  def initialize(params)
    @definition = params[:definition]
    @term = params[:term]
    @attempts = 0
  end

  def increment_attempts
    @attempts += 1
  end



end
