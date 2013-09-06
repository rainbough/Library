#The initialize method requests title, author, and desciption of the book
#then stores that info
#
#
class Book
  def initialize
	puts "What is the title of the book?"
	@title = gets.chomp
	@title_sym = @title.downcase.tr(" ", "_").to_sym
	puts "Who is the author of the book?"
	@author = gets.chomp
	@author_sym = @author.downcase.tr(" ", "_").to_sym
	puts "Please enter a short description of the book:"
	@description = gets.chomp
	@status = :available
  end
#This method returns the saved information on a book.
#It does not take an argument.
# 
#
  def info
  	puts "__________________________"
  	puts " "
  	puts "Title: #{@title}"
  	puts "Author: #{@author}"
  	puts "Description: #{@description}"
  	puts "Status: #{@status}"
  	puts "__________________________"
  end
#Checkout method
#
#
#

end

command = "active"
until command == "q"
  puts "Welcome to the Makersquare Library."
  puts "What would you like to do?"
  puts "Commands:"
  puts "add -Add books to the library"
  puts "q -quit"
=begin
puts "list av - see a list of available books in the library"
puts "list all - see a list of all books in the library"
puts "list ov - see a list of overdue books in the library"
=end
  command = gets.chomp.downcase

  case command
    when "add"
      currentbook = Book.new()
      currentbook.info
=begin 
  when "list av"

  when "list all"

  when  "list ov"
=end
    when "q"
    	break
    else 
  	  puts "Response not understood."
    end
end