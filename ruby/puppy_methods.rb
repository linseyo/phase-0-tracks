# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak (integer)
# 	  	i = 0
# 	  	integer = 10
# 	  	while i < integer #10.times do
# 	  	puts "woof"
# 	  	i += 1
# 	  	end 
#   end 

#   def roll_over 
#   	puts "*rolls over*" 
#   end
  
#   def dog_years (human_years)
#   	dog_years = human_years * 7

#   	return dog_years
#   end

#   def play_dead
#   	puts "i'm dead"

#   end 

#   def initialize
#   	puts "Initializing new puppy instance ..."
#   end 		

# end

# woof = Puppy.new
# woof.fetch ('ball')
# woof.speak (5)
# woof.roll_over
# woof.dog_years(10)
# woof.play_dead


class Cat
		def initialize
			"Initializing the cat method"
		end

		def meow (integer)
			i = integer
			i.times do
				puts "meow"
			end
		end

		def sleep 
			puts "i'm sleeping. go away."
		end			

	end
litter = []

50.times do 
	kitties = Cat.new
	litter << kitties
end

litter.each do |milk|
	milk.meow(5)
	milk.sleep
end	