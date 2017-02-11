

require_relative 'game'

describe Game do

	it "displays the letters guessed" do
		game = Game.new
		expect(game.guess_progress('e')).to eq 'e'
	end
 
	it "prints out taunting message" do
		game = Game.new
		expect(game.failure).to eq 'Sorry you lose'
	end

	it "prints out congrats message" do
		game = Game.new
		expect(game.congrats).to eq 'Congrats on Guessing the Word'
	end
	
end