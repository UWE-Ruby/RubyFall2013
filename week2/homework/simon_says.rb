module SimonSays
<<<<<<< HEAD
  def echo(phrase)
    phrase
  end

  def shout(phrase)
    phrase.upcase
  end
  
  def repeat(*args)
    if args.length == 1
        "#{args[0]} #{args[0]}"
    elsif args.length == 2
        ("#{args[0]} " * args[1]).strip  
    else
        #throw an error for wrong
        #number of args
    end
  end
  
  def start_of_word(*args)
    if args.length == 2
        args[0][0..(args[1]-1)]
    else
      #throw an error for wrong
      #number of args
    end
  end
  
  def first_word(phrase)
    phrase.split(' ')[0]
  end
end
=======
	def echo(st)
		st
	end
	
	def shout(st)
		st.upcase
	end

	def first_word(st)
		st.split.first
	end

	def start_of_word(st,i)
		st[0...i]
	end
	
	def repeat(st, t=2)
		([st]*t).join(' ')
	end
end
>>>>>>> 02ccc7d94fdfc30a6d2d7e93c8bee3f07a3da618
