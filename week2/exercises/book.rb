class Book
	##orig-attr_accessor :title, :pages
  ##orig-
	##orig-def initialize(title, pages)
	##orig-	@title = title
	##orig-	@pages = pages
	##orig-end
  ##orig-
	##orig-def page_count
	##orig-	"Page count is #{@pages}"
	##orig-end
	# attr_accessor :title   -- creates getters and setters, readers / writers
	# attr_reader reader only
	# attr_writer
	attr_accessor :title
	attr_reader :page_count    #can't change it.
	@@book_count = 0
	def self.book_count
	  @@book_count  # ||= 0  optional
	                # class level variable - 
	                # 1. @@ viewable to instances as well
	                # if you change name of class do not have to change 
	                # 2. Book.library_count (class name .) will need to change everywwhere
	                # 3. self <<  rare
  end
  def initialize  title = "Not Set"
     
    @@book_count += 1                                # instance of a class initiialze is called - not required
    @page_count = page_count
    @title = title # also called a constuctor
    
  end
	def test
	  @test = "Hello!" #@variable 
  end
  def out_put_test
    puts @test
    puts @@book_count
	end
end
