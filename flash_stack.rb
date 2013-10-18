require "csv"

class FlashStack 
  
  def initialize
    @deck = []
  end
  
  def load

    CSV.foreach(file, "wb") do |row|
      if 
      @deck << FlashCard.new(row[0])

  end

  def remove!
    @deck.shift
  end

end
