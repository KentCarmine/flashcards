require "./flashcard.rb"

class FlashStack 
  
  def initialize
    @deck = []
  end
  
  def load(filename)
    File.open(filename, "r") do |file|
      file.each_slice(3) do |row| 
        temp_hash = { :definition => row[0].chomp, :term => row[1].chomp}
      @deck << FlashCard.new(temp_hash)
    end
    shuffle_deck
  end
  


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
