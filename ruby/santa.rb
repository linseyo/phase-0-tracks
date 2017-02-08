class Santa

	def speak 
		print "Ho, ho, ho! Haaaappy holidays"
	end

	def eat_milk_and_cookies(cookie)
		print "That was a good #{cookie}!"
		cookie
	end

	def initialize
		print "Initializing Santa instance..."
	end

end

talk = Santa.new
nom = Santa.new

talk.speak
nom.eat_milk_and_cookies('snickerdoodle')
