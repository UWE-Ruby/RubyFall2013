class Book

	attr_accessor :title, :pages

	def initialize(title, pages)
		@title = title
		@pages = pages
	end

	def page_count
		@pages
	end

  def page_report
    "#{@title} is #{@pages} pages long"
  end
end
