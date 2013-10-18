# File.open('flashcard_samples.txt', 'r') do |card_file|  
#   ctr = 1
#   description = ""
#   term = ""

#   desc_term_map = []

#   while line = card_file.gets  
    
#     if ctr == 1
#       description = line.chomp
#     elsif ctr == 2
#       term = line.chomp
#       desc_term_map << [description, term]
#     else
#       ctr = 0
#     end

    
#     ctr += 1
#   end
    

# end 

# puts $desc_term_map
require './flashcard.rb'

File.open('flashcard_samples.txt', 'r') do |card_file|
 card_file.each_slice(3) do |row|
    params = {:definition => row[0], :term => row[1]}
    card = FlashCard.new(params)
    @deck << card
  end
end  
