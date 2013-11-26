class PirateTranslator

	def say arg1
		@english = arg1
	end

	def translate 
		@result = ""
		datastore = { 'Hello Friend' => "Ahoy Matey\n Shiber Me Timbers You Scurvey Dogs!!"}
		@result = datastore[@english]
	end

end  # of class PirateTranslator