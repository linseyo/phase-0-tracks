

require_relative 'game'

describe Game do



	it "prints out taunting message" do
		game = Game.new
		expect(game.failure).to eq 'Sorry you lose'
	end

	it "prints out congrats message" do
		game = Game.new
		expect(game.congrats).to eq 'Congrats on Guessing the Word'
	end
	
end