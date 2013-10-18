

class FlashStack 
  
  def initialize
    @deck = []
  end
  
  def load

    CSV.foreach(file, "wb") do |row|

  end

  def remove!
    @deck.shift
  end

end
