module SimonSays
    def echo(input)
      input
    end

    def shout(input)
      input.upcase
    end

    def repeat(input, times=2)
      ((input + ' ') * times).chop
    end

    def start_of_word(input,last)
      input[0...last]
    end

    def first_word(input)
      input.split(' ')[0]
    end
end