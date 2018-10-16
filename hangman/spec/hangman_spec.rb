require 'hangman'

RSpec.describe "hangman result" do

	let(:game) { Hangman.new("rainboww") }

	#let(:dictionary) { Dictionary.new }

  it "check length of submitted word" do
  	skip
    expect(game.count_letters).to eq(8)
  end

  it "check word returned in array of underscores" do
  	skip
    expect(game.set_output).to eq(['_', '_', '_', '_', '_', '_', '_', '_'])
  end

  it "check character is in the word array" do
  	skip
    expect(game.guess("r")).to eq(true)
  end  


  it "check which position correct letter is in the array" do
  	skip
    expect(game.guess("r")).to eq([0])
    expect(game.guess("a")).to eq([1])
    expect(game.guess("w")).to eq([6, 7])
  end    

  it "check for incorrect letter in the array" do
  	skip
    expect(game.guess("z")).to eq(nil)
  end	 


  it "replace underscore with letter" do
    expect(game.guess("r")).to eq(['r', '_', '_', '_', '_', '_', '_', '_'])
    expect(game.guess("w")).to eq(['r', '_', '_', '_', '_', '_', 'w', 'w'])
  end  

  it "fails = 1 when 1 incorrect character is passed" do
    expect(game.guess("z")).to eq([])
    expect(game.guess("z")).to eq([])
    expect(game.guess("z")).to eq([])
    expect(game.guess("z")).to eq( [])
    expect(game.guess("z")).to eq([])
    expect(game.guess("z")).to eq([])
    expect(game.guess("z")).to eq([])
    expect(game.guess("z")).to eq([])
    expect(game.guess("z")).to eq([])
    expect(game.guess("z")).to eq([])
    expect(game.guess("z")).to eq([])
    expect(game.guess("z")).to eq("Uh oh. You lost")
  end  



 

end
