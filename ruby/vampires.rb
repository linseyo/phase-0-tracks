puts "How many employees will be processed?"
x = gets.chomp.to_i
x.times do 

	puts "What is your name?"
	user_name = gets.chomp

	puts "How old are you?"
	user_age = gets.chomp.to_i


	puts "what year were you born?"
	user_birthyear = gets.chomp.to_i

	puts "Our company cafeteria serves bomb garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp

	puts "Would you like to enroll in the companys health insurance? (y/n)"
	health_insur = gets.chomp

	puts case probs not_vampire
	when user_age == , garlic_bread == "y",
		"Probably not a vampire."
	when user_age == , health_insur == "y",
		"Probably not a vampire."
	else
		"Results inconclusive"
	end 

	puts case probs vampire
	when user_age ==, garlic_bread == "n"
		"Probably a vampire."
	when user_age ==, health_insur == "n"
		"Probably a vampire."
	else
		"Results inconclusive"
	end

	puts case Almost vampire
	when user_age == , garlic_bread == "n", health_insur == "n"
		"Almost certainly a vampire"
	else 
		"Results inconclusive"
	end

	puts case vampire
	when user_name == "Drake Cula", user_name == "Tu Fang"
		"Definitely a vampire"


	else
	"Results inconclusive"

end




