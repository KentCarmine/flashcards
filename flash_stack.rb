require "./flashcard.rb"
class FlashStack 
  
  def initialize
    @deck = []
  end
  
  def load(filename)
    File.open(filename, "r") do |file|
      file.each_slice(3) do |row| 
        #p row[0]
      temp_hash = { :definition => row[0].chomp, :term => row[1]}
      @deck << FlashCard.new(temp_hash)
    end
    end
   

  end

  def remove!
    @deck.shift
  end

end

# FlashStack.new.load
