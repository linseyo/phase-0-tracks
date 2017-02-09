class Santa
	attr_reader :ethnicity
	attr_accessor :age


	def initialize(gender,ethnicity,origin)
		@gender = gender
		@ethnicity = ethnicity
		@origin = origin
		print "Initializing Santa instance..."
	end

	def speak 
		print "Ho, ho, ho! Haaaappy holidays"
	end

	def eat_milk_and_cookies(cookie)
		print "That was a good #{cookie}!"
		cookie
	end

	def reindeer_ranking
		reindeer_ranking_array = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		reindeer_ranking_array
	end

	def age(age = 0)
		@age = age
	end

	def celebrate_birthday(age)
		age += 1 
	end

	def get_mad_at(reindeer_name)
		reindeer_ranking_array
	end
end

# talk = Santa.new
# nom = Santa.new

# talk.speak
# nom.eat_milk_and_cookies('snickerdoodle')

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
origin_details = ["Japan","South Korea","Bali","London","Hawaii","Canada","North Pole"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], origin_details[i])
end

# puts "#{santas.age} is not equal to #{santas.ethnicity}"
