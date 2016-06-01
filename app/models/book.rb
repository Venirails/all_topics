class Book < ActiveRecord::Base
	
	 self.per_page = 5
validates :name, presence: true
validates :name, uniqueness: true
validates :author, presence: true
validates :name, length: { minimum: 3,message: "Please enter atleast 3 chars" }

before_save :merge_book_name

after_save :confirm_message

def merge_book_name
	self.name = self.name + " by "+ self.author
end

def confirm_message
	puts "Email has been sent to admin"
end


end
