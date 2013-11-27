class Printer
	def print(book)
		"This book is a book"
		"This book is Fiction!" if book.is_a?(FictionBook)
		"This book is All True!!" if book.is_a?(NonFictionBook)
	end
end

class Book
	attr_accessor :title, :author
end

class FictionBook < Book
end

class NonFictionBook < Book
end
