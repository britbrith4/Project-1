require "active_record"
require "pry"
require_relative "models.rb"

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:database => "flashcards_db"
)

# ActiveRecord::Base

class SetUp < ActiveRecord::Migration

	def setup
		create_table :flashcards do |column|
			column.belongs_to :category
			column.text :question
			column.text :answer
		
		end

		create_table :categories do |column|
			column.text :name
		end
	end

	def wipe
    ActiveRecord::Base.connection.tables.each do |table|
      ActiveRecord::Base.connection.drop_table(table)
    end
  end

end

 App.new
