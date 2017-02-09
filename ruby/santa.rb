class Santa
	attr_reader :beard
	attr_accessor :ethnicity, :gender, :origin, :age


	def initialize(gender,ethnicity,origin,age,beard)
		@gender = gender
		@ethnicity = ethnicity
		@origin = origin
		@age = 0
		@beard = beard
		print "Initializing Santa instance..."
	end

	# Getter Method ---> use attr_reader! 
	# def gender
	# 	@gender
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	def speak 
		print "Ho, ho, ho! Haaaappy holidays"
	end

	def eat_milk_and_cookies(cookie)
		print "That was a good #{cookie}!"
		cookie
	end

	def reindeer_ranking
		@reindeer_ranking_array = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def celebrate_birthday(age)
		age += 1
		@age = age
		print @age
	end

	def ethnicity_randomizer
		@ethnicity = example_ethnicities.sample
	end

	def gender_randomizer
		@gender = example_genders.sample
	end

	def origin_randomizer
		@origin = origin_details.sample
	end

	def age_randomizer
		@age = age_variation.sample(random:rng)
	end
	# def get_mad_at(reindeer_name)
	# 	@reindeer_ranking_array.each_index do |find_reindeer| 
	# 	find_reindeer == reindeer_name 
	# 	@reindeer_ranking_array.insert(-1, reindeer_ranking_array.delete_at(find_reindeer))
	# end

end

# Boss = Santa.new("female","asian","Korea",0)

# Boss.speak
# Boss.eat_milk_and_cookies('snickerdoodle')

# Boss.age
# puts "Boss is a #{Boss.ethnicity}"
# puts "but boss is a #{Boss.gender}"
# Boss.celebrate_birthday(5)

# santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
origin_details = ["Japan","South Korea","Bali","London","Hawaii","Canada","North Pole", "N/A"]
age_variation = [0,4,6,22,44,55,45,67,56,68,98,100,123,130,140,18,78]
# example_genders.length.times do |i|
#   santas = Santa.new(example_genders[i], example_ethnicities[i], origin_details[i], age_variation[i])
# end
5.times do 
	Santaz = Santa.new
end

puts "I am a #{santas.gender}, from #{santas.origin} but I am #{santas.age} and I am #{santas.ethnicity}"


# puts "#{santas.age} is not equal to #{santas.ethnicity}"
