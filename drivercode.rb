require "./flashstack.rb"
require "./flashcard.rb"

# Create FlashStack object
test_flash_stack = FlashStack.new
#   Load from the file
#   Populate FlashCard objects with file contents
test_flash_stack.load
#   
# Remove first flashcard from stack
first_card = test_flash_stack.remove!
#   print definition on that card
puts "Definition"
puts first_card.definition
#   check that term of that card == "alias"
if first_card.term == "alias" 
  puts "CORRECT"
else 
  puts "WRONG"
end
#     if it does
#       print WIN
#     otherwise
#       print FAIL

