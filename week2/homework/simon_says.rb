module SimonSays
  def echo(name)
    return name
  end

  def shout(name)
    return name.upcase
  end

  def repeat(name, n)
    Array.new(n, name).join ' '
  end

  def start_of_word(name, n)
    @frag = name.scan /\w/
    return @frag[0...n].join''
  end

  def first_word(name)
    return name.split(" ")[0]
  end
end