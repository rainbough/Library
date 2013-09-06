#The initialize method requests title, author, and desciption of the book
#then stores that info
#
#
class Book
	 
  def initialize
	puts "What is the title of the book?"
	@title = gets.chomp
	#@title_sym = @title.downcase.tr(" ", "_").to_sym
	puts "Who is the author of the book?"
	@author = gets.chomp
	#@author_sym = @author.downcase.tr(" ", "_").to_sym
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
#return the value of the book instance variable
  def printbook
  	@title
  end
#return the value of the author instance variable
  def printauthor
  	@author
  end
#return the value of the status instance variable
  def printstatus
  	@status
  end
#Checkout method
#
#
#
  def check_out
	@status = :checked_out
  end
  def return
  	@status = :available
  end

end

class Library
  def initialize
    #@books {title, author}
    @books = Hash.new

    #@checked_out {title, status}
    @checked_out = Hash.new
  end

# this method will maintain a list of books in the library
# after the add command is called and a new book is created
# get data and add to library
  def add(title, author)
  	
  	@books[title] = author

  end
  def books
  	puts "__________________________"
  	puts "The MakerSquare Library:"
  	@books.each do |key, value| 
      puts "Title: #{key}, Author: #{value}"
  	end
  	puts "__________________________"
  end


end
#create the first makersquare library

makersquare = Library.new()

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
      title = currentbook.printbook
      author = currentbook.printauthor
      makersquare.add(title, author)
      makersquare.books

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
