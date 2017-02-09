module Shout
	def self.yell_angrily(words)
		words + "!!!" + ":("
	end
	def self.yelling_happily(words)
		words + "!!!" + ":)"
	end

end


Shout.yell_angrily('I AM TIRED')
Shout.yelling_happily('FREEDOM')