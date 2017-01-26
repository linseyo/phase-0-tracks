puts "what's your hamster's name?"
hamster_name = gets.chomp

puts "what volume do you prefer?"
volume_level = gets.to_i

puts "what color is the hamster?"
fur_color = gets.chomp


puts "good for adoption?"
adoptme = gets.chomp

puts "estimated age?"
est_age = gets.to_i



puts "Hamster Name: #{hamster_name}"
puts "Hamster Volume: #{volume_level}" 
puts "Hamster Color: #{fur_color}"
puts "Adoptable: #{adoptme}"

if "#{est_age}" == "#{est_age}"
		puts "Age:#{est_age}"
else 
	est_age = nil  
	puts "#{est_age}"
end