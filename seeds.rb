require_relative "controller.rb"

app = SetUp.new
app.wipe
app.setup

flashcard1 = Flashcard.create(question: "What is 2 + 2?", answer: "It's 4")
flashcard2 = Flashcard.create(question: "What is the 4 + 3?", answer: "It's 7")
flashcard3 = Flashcard.create(question: "What is the Capital of Iowa?", answer: "It's Des Moines.")
flashcard4 = Flashcard.create(question: "What is the Capital of Missouri?", answer: "It's Jefferson City.")
flashcard5 = Flashcard.create(question: "Old McDonald had a?", answer: "Farm.")
flashcard6 = Flashcard.create(question: "Twinkle Twinkle little, what?", answer: "Star.")
 
# flashcard1.update(answer: "It's 4.0 because I'm really precise")

category1 = Category.create(name: "Math")
category1.flashcards.create(question: "What is 2 + 2?", answer: "It's 4")
category1.flashcards.create(question: "What is 4 + 3?", answer: "It's 7")

category2 = Category.create(name: "Geography")
category2.flashcards.create(question: "What is the Capital of Iowa?", answer: "It's Des Moines.")
category2.flashcards.create(question: "What is the Capital of Missouri?", answer: "It's Jefferson City.")

category3 = Category.create(name: "Lyrical")
category3.flashcards.create(question: "Old McDonald had a what?", answer: "Farm.")
category3.flashcards.create(question: "Twinkle Twinkle little, what?", answer: "Star.")

category1.flashcards.all.each do |flashcard|
  puts "#{flashcard.question}"
 end

# category2.flashcards.all.each do |flashcard|
#   puts "#{flashcard.question}"
# end

# category3.flashcards.all.each do |flashcard|
#   puts "#{flashcard.question}"
# end
#

#README.empty has my trello in it also it is also https://trello.com/b/WEWMSJsQ/flashcards
