class Book
  
  attr_accessor :title, :author, :page_count, :pages

  def initialize(title="titel", author="N/A", page_count=0)
    @title = title
    @author = author
    @page_count = page_count
  end

  def pretty_print
    "#{title} - #{author} pages: #{page_count}"
  end

  def characters
    pages.inject(0){|total, p| p.size}
  end

end
