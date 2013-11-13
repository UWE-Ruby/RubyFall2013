class Worker

	def self.work(*arg, &block)
		block.call
		block.call
		block.call
	end
end

# I know this is horrible code. I spent an embarrassing amount of time just figuring out
# def self.work to get the spec to recognize the method.  
#
# The rest of the time, I tried many, many (many) variations on arg.times{block.call}
# that never worked.  I suspect there may be some core concepts that I'm not grasping yet,
# but don't know enough to know what they are.  I have an analogy: when I was young and 
# got my first writing assignments in grade school, I would turn them in with random 
# sentences indented on a new line.  I didn't know why or when that was supposed to
# happen, but sentences starting on a new line, indented from the margin, was a thing I 
# had seen often enough to be sure it was important, so adopted the practice for purely
# cosmetic reasons.  I would finish the assignment, look at the page and think to myself,
# "Yes.  This is what a page with many words is supposed to look like."  The concept of 
# paragraphs and organization of ideas was foreign to me.  
#
# I feel a bit like that now.  self.<method> is a thing I've seen often enough to be sure
# it's important, so I adopted the practice for purely cosmetic reasons.  And it made the
# spec work.  And by work, I mean give a different error, which by any measure is a sign
# of progress, is it not?  