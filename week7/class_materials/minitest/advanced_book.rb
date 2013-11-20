class String
  def humanize
    self.gsub('_', ' ')
  end
end

class Book

  attr_accessor :title, :author, :page_count, :pages
  
  def initialize(inital_hash=nil)
    inital_hash.each do |k,v|
      instance_variable_set("@#{k}", v)
    end if inital_hash
  end

  def pretty_print
  	"#{title} - #{author} pages: #{page_count}"
  end

  # def pretty_print_title
  #   "Title: #{title}"
  # end
  # 
  # def pretty_print_author
  #   "Author: #{author}"
  # end

  [:author, :title].each do |attr|
    define_method("pretty_print_#{attr}") do
      "#{attr.to_s.capitalize}: #{instance_variable_get("@#{attr}")}"
    end
  end

  [:page_count].each do |attr|
    define_method("read_method_#{attr}") do
      "#{attr.to_s.capitalize.humanize}: #{self.send(attr)}"
    end
  end

  def map_pages
    maped_pages = pages
    pages.each_with_index do |page, i|
      maped_pages[i] = yield(page)
    end
    maped_pages
  end

  def self.page_counter(book)
    yield(book.pages)
  end

end

# Unit tests

require 'minitest/autorun'

class TestBook < MiniTest::Unit::TestCase
  def setup
    @book = Book.new(title: 'test', author: "Mr. Test", page_count: 4)
  end

  def test_that_book_can_print_pretty
    assert_equal "#{@book.title} - #{@book.author} pages: #{@book.page_count}", @book.pretty_print
  end

  def test_that_book_has_author
  	assert_equal @book.author, "Mr. Test"
  end

  def test_that_book_can_count_pages
    assert @book.page_count.kind_of?(Integer)
  end

  def test_that_book_can_dynamically_count_pages
    @book.pages = ['page 1', 'page 2']
    assert_equal Book.page_counter(@book) {|pages| pages.count}, 2
  end
end

# Specs

describe Book do
  before do
    @book = Book.new
    @book.pages = ['This is page 1', 'Page 2 is this one', 'Page 3 is short', 'Page 4 is very very very long']
  end

  describe "when asked about author" do
    it "must respond with the author" do
    	@book.author = "Mr. Test"
      @book.author.must_equal "Mr. Test"
    end
  end

  describe "when mapping pages" do
    it "must count the characters on the page" do
      maped_pages = @book.map_pages do |page|
        page.size
      end
      maped_pages.must_equal [14, 18, 15, 29]
    end
  end

  describe "when counting pages" do
    it "should read the page count method" do
      @book.read_method_page_count.must_equal "Page count: #{@book.page_count}"
    end
  end

  describe "when pretty printing" do
    it "must print the author label and author name" do
      @book.pretty_print_author.must_equal "Author: #{@book.author}"
    end

    it "must print the title label and title" do
      @book.pretty_print_title.must_equal "Title: #{@book.title}"
    end
  end
end
