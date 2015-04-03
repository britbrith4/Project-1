class App

	def initialize
		puts "WELCOME TO FLASHCARD 101 HIT ENTER & PLEASE SELECT AN OPTION!"
		@flashcard = Flashcard.new(question: gets.chomp.to_s)
		menu
	end

	def menu
		while true
			puts"(1)List all flashcards, (2) Add a flashcard, (3) Remove a flashcard, (4) Shuffle your flashcards up, (5) Create a category, (6) View a specific category, (7) Quit if you must"
			entry = gets.chomp.downcase
			case entry
			when "1"
				Flashcard.all.each do |card|
					puts card.question 
					#Lists all items in the database
			end
			
			when "2"
				puts "Enter the question"
				question = gets.chomp
				puts "Enter the answer"
				answer = gets.chomp
				Flashcard.create(question: question, answer: answer)
				#User will add in both quesion and answer to create a new flashcard

			when "3"
				Flashcard.all.each do |card|
					puts card.question 
			end
				
				puts "Which flashcard question do you want to delete?"
				delete = gets.chomp
				Flashcard.find_by(question: delete).destroy
				#deletes flashcard in the lists

			when "4"
				Flashcard.all.shuffle do |each|
					
			end		


			when "5"
				puts "What is the new category you would like to create?"
				create_category = gets.chomp
				Category.all.each do |card|
			end		

			when "6"
				puts "What is the category you would like to view?"
				select = gets.chomp
				Category.find_by(category:select).select

			when "7"
				puts "You are leaving the game but it will be saved!"
				break
				
			else
				puts "Invaild option."

				#all else will throw the user an error
			
			end
		end
	end

end

class Flashcard < ActiveRecord::Base
	belongs_to :category
end

class Category < ActiveRecord::Base
	has_many :flashcards
end
