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
	attr_reader :print_word, :number_of_guesses
	attr_accessor :secrect_word, :letters_guessed

	def initialize(word)
		@secrect_word = word.downcase
		@number_of_guesses = word.length
		@print_word = "_" * word.length
		@letters_guessed = letters_guessed
	end 

	def guess_begin(letters_guessed)
		until @number_of_guesses == 0 
			puts "Please guess a letter"
			letters_guessed = gets.chomp
			if attempted_letters.include? letters_guessed
				puts "You already guessed that letter, try again"
				letters_guessed = gets.chomp
			end
		attempted_letters << letters_guessed
	end

	def guess_progress(letters_guessed)
		display_progress = ''
		@secret_word.split("").each  do |letter| 
			if letters_guessed.include?(letter)
				display_progress << letter
			else
				display_progress = '_'
			end
		end
		display_progress
	end

	def attempt_progress
		if word.length == 0 
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

attempted_letters = []

puts "Player 2, please guess a letter:"
letters_guessed = gets.chomp



