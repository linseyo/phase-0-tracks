puts "How many employees will be processed?"
x = gets.to_i
x.times do 

	puts "What is your name?"
	user_name = gets.chomp

	puts "How old are you?"
	user_age = gets.to_i

	puts "what year were you born?"
	user_birthyear = gets.to_i
	user_trueage = user_age + user_birthyear
	
	puts "Our company cafeteria serves bomb garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp

	puts "Would you like to enroll in the companys health insurance? (y/n)"
	health_insur = gets.chomp
	
      if (user_name == "Drake Cula" || user_name == "Tu Fang") && user_trueage == "2016".to_i && garlic_bread == "y" && health_insur == "y"
    		puts "Definitely a vampire"
    	elsif user_trueage != "2016".to_i && garlic_bread == "n" && health_insur == "n"
    		puts "Almost certainly a vampire"
      elsif user_trueage == "2016".to_i and (garlic_bread == "y" || health_insur == "y")
    		puts "Probably not a vampire."
    		
    	elsif user_trueage != "2016".to_i and (garlic_bread == "n" || health_insur == "n")
    		puts "Probably a vampire."
    	else
        puts "Results inconclusive"
    	end

  user_input = FALSE
  until user_input
  puts "Please list any allergies, type done when finished"
  user_allergy = gets.chomp
  
    if user_allergy == "done"
      puts "Probably not a vampire. Thank you"
      user_input = true
    elsif user_allergy == "sunshine"
      puts "Probably a vampire!!!"
      user_input = true
    else 
      puts "Anything else?"
    end
  end
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end