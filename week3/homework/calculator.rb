class Calculator 
#----------------------------------------------------------
	def sum arr
#		sum = 0																		# my original
#		arr.each { |a| sum += a }									# my original
#		sum																				# my original
	#	arr.inject(0){|sum,a| sum += a }  				#alt 1 
		arr.inject( 0, :+ )    										#alt 2
	end
#----------------------------------------------------------
	def multiply arr, opt=0
	#def multiply *arr   												#alt 1 splat args makes them optionsl # alt
	product = 1																# my original
		if arr.kind_of? Array
			arr.each { |a| product *= a }						# my original
		product																		# my original
		else																			# my original
			product = arr * opt											# my original
		end																				# my original

	
	#	arr.flatten.inject(:*)    								#alt

	end
#----------------------------------------------------------		
	def fac n
	#	product = 1																# my original = alt 1
	#	1.upto(n) { |a| product = product * a }		# my original
	#	1.upto(n) { |a| product *= a }						#alt 1
	#	product																		# my original = alt 1

		(1..n).to_a.inject(1,:*)									#alt 2

	#	return 1 if n==0													#alt3 alt a
	#	return 1 if n.zero?												#alt3 alt b
	#	n * fac(n-1)															#alt3 recursive; calls itself
	end
#----------------------------------------------------------
	def pow base, power		
	#	expo = base**power												# my original
		base**power																#alt
	end
#----------------------------------------------------------
end