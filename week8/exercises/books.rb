class Printer
	def print(book)
<<<<<<< HEAD
    book.print_out if book.respond_to? :print_out
=======
		"This book is a book"
		"This book is Fiction!" if book.is_a?(FictionBook)
		"This book is All True!!" if book.is_a?(NonFictionBook)
>>>>>>> master
	end
end

class Book
	attr_accessor :title, :author
<<<<<<< HEAD
  def print_out
    "This book is a book"
  end
end

class FictionBook < Book
  def print_out
    "This book is Fiction!"
  end
=======
end

class FictionBook < Book
>>>>>>> master
end

class NonFictionBook < Book
end
