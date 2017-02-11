require_relative 'game_class'

describe game_class do
	it "prints out congrats message" do
		game = Game_class.new
		expect(game.congrats).to eq "Congrats on Guessing the Word!"
	end
	
end