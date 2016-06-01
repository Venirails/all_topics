class Notification < ActionMailer::Base
  default from: "info@books.com"
  
  def send_email_to_admin(book_detail)
	  @book_name = book_detail.name
	  @book_author = book_detail.author
	  mail(:to=>"veni.rails@gmail.com",:subject=>"A new book has been added")
	  attachments['filename.jpg'] = File.read('/path/to/filename.jpg')
 end
	  
end
