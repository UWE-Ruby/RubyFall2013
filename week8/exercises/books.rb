class Printer
	def print(book)
    book.print_out if book.respond_to? :print_out
	end
end

class Book
	attr_accessor :title, :author
  def print_out
    "This book is a book"
  end
end

class FictionBook < Book
  def print_out
    "This book is Fiction!"
  end
end

class NonFictionBook < Book
end
