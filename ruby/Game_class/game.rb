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
	attr_reader :print_word, 
	attr_accessor :secret_word, :attempted_leters, :number_of_guesses

	def initialize(word)
		@secret_word = word.downcase.split("")
		@number_of_guesses = @secret_word.length
		@attempted_letters = []
	end 

	def guess_progress(letter)
		display_progress = ''
		@secret_word.each  do |aplhabet| 
			if @attempted_letters.include?(alphabet)
				display_progress << alphabet
			else
				display_progress = '_'
			end
		end
		display_progress
	end

	def guessing (letter)
			until @number_of_guesses == 0 
				p "Please guess a letter, you have #{@number_of_guesses}!"
				if @secret_word.include? letter
					guess_progress
					@attempted_letters << letter
					@number_of_guesses -= 1
				elsif @attempted_letters.include? letter
					p "You already guessed that letter, try again"
					guess_progress
				else 
					p "Guess again, #{letters} is incorrect"
					@attempted_letters << letter
					@number_of_guesses -= 1
				end
			p "There are #{@number_of_guesses} left..."

			end
	end

	def win
		if @secrect_word == @print_word
			congrats
		end
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

puts "Player 2, you have #{game.number_of_guesses}, please guess a letter:"
letter = gets.chomp
game.guessing(letter)




