class Book

	attr_accessor :title #can get and set title
  attr_writer :pages #can't change page count


  @@book_count = 0

  # called when you create new instance
  # both title and pages have defaults, making them not required
	def initialize(title="TITLE", pages=0)
		@title = title
		@pages = pages
    @@book_count += 1
	end

	def page_count
		"Page count is #{@pages}"
	end


  # CLASS METHOD

  def self.book_count
    # could allso use @@book_count ||= 0
    @@book_count
  end


  # 
  # Taken care of by attr_accessor :title
  # 
  # def title
  #   @title
  # end
  # 
  # def title=(t)
  #   @title = t
  # end
end
