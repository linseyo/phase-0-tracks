# Pseudocode for Game Class
class Game_class
# Create a Game where:
# User 1 enters a word
# User 2 attempts to guess the word
	# attr reader :number_of_chances
	# attr accessor :secret_word

	def initialize(word)
		@secret_word = word 
		@number_of_chances = word.length
		
	end

	def guess(letters)

	end

# Guesses are limited --> based on the length of the word
# 	(i.e: word is SOCK, user gets 4 guesses)
# 	guesses = word.length
# 	.length 
# 	Repeated guesses do not count against user
# 		(i.e: if user guesses the letter "P" twice, it will only count as 1 guess)


# User 2 recieves update on the current state of the word during each guess
# 	(think hang-man & being able to see which letters you've already guessed & how many more letters you need to guess)

# 	After each guess, print out the current state of the word
	def guess_progress(word,letters_guessed)
		display_progress = ''
		word.chars.each  do |letter| 
			if letters_guessed.include?(letter)
				display_progress << letter
			else
				display_progress = '_'
			end
		end
		display_progress
	end


# End with a congratulatory message if WIN
	def congrats
		puts "Congrats on Guessing the Word!"
	end

# End with a taunting message is LOSE
	def failure 
		puts "I'm sorry you suck at this game!"
	end


end