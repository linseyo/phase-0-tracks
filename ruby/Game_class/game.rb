# Pseudocode for Game Class

# Create a Game where:
# User 1 enters a word
# User 2 attempts to guess the word


# Input: Word 
# Input: Letters

# Guesses are limited --> based on the length of the word
# 	(i.e: word is SOCK, user gets 4 guesses)
# 	guesses = word.length
# 	If does not guess in .length amount of guesses --> LOSE
# 		Use LOSE print Method
# 	If does guess --> WIN
# 		Use WIN print Method 

# 	**Repeated guesses do not count against user
# 		(i.e: if user guesses the letter "P" twice, it will only count as 1 guess)

# User 2 recieves update on the current state of the word during each guess
# 	Input: guessed letters
# 	(think hang-man & being able to see which letters you've already guessed & how many more letters you need to guess)
# 	After each guess, print out the current state of the word
# 	Output: Use _ to represent letters that have not been guessed (_ _ x _ o _)

class Game
	attr_accessor :secrect_word
	def initialize(word)
		@secrect_word = word.downcase
		@number_of_guesses = word.length
		@print_word = "_" * word.length

	def guess_progress(letters_guessed)
		display_progress = ''
		@secret_word.chars.each  do |letter| 
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
		p "Congrats on Guessing the Word"
	end
# End with a taunting message is LOSE
	def failure
		p "Sorry you lose"
	end
end

puts "Want to play a game?"
puts "Player 1 will enter a word & Player 2 will try to guess the word by typing a letter"
puts "Player 1: Enter the Word Below:"
word = gets.chomp

game = Game.new(word)



