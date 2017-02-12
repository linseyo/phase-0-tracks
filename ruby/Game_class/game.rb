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
	# attr_reader
	attr_accessor :secret_word, :attempted_leters, :number_of_guesses, :display

	def initialize(word)
		@secret_word = word.downcase.split("")
		@number_of_guesses = @secret_word.length
		@display = " _" * @secret_word.length
		@attempted_letters = []
	end 
# Let user enter a letter, check if letter exists, if it does print out the progress
	def guess_correct(letter)
		if @secret_word.include?(letter)
			@secret_word.each_with_index do |correct, index|
			if letter == correct
				@display[2*index+1] = letter
				puts @display
				@attempted_letters << letter
				end
			end
			@number_of_guesses -= 1
			return true
		else 
			return false
		end 
	end

# Method for repeat letter guesses
	def repeat_guess(letter)
		if @attempted_letters.include?(letter)
			puts "you already guessed that..."
			return true
		end
			return false
	end

# Method for wrong letter guess
	def wrong_guess(letter)
		if !@attempted_letters.include?(letter)
			puts "WRONG...."
			@attempted_letters << letter
			@number_of_guesses -= 1 
			p @number_of_guesses
			p @display
			p "you have #{@number_of_guesses} guesses left..."
			return true
		end
	end
# Method combine all three guessing platforms
# Include method to determine win? 

	def guessing_for_the_win(letter)
		if repeat_guess(letter)
		elsif guess_correct(letter)
		else wrong_guess(letter)
		end 

		if @secret_word == @display
			congrats
		elsif @number_of_guesses > 0 

			p "Keep guessing"
		else
			failure
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
puts "------------------------------------------------"
puts "Player 1 will enter a word & Player 2 will try to guess the word by typing a letter"
puts "Player 1: Enter the Word Below:"
word = gets.chomp

game = Game.new(word)

until game.number_of_guesses == 0 
puts "Player 2, you have #{game.number_of_guesses}, please guess a letter:"	
	letter = gets.chomp
	game.guessing_for_the_win(letter)
	p game.number_of_guesses
end




