require './RockPaperScissors'  

describe RockPaperScissors do

  game = RockPaperScissors.new
  scissors = Scissors.new
  paper = Paper.new
  rock = Rock.new

  it "happens that Scissors beat Papers" do
    expect(game.hand(scissors, paper).to_s).to eq "First player's Scissors beats second player's Paper"
    expect(game.hand(paper, scissors).to_s).to eq "Second player's Scissors beats first player's Paper"
  end

  it "happens that two Scissors tie" do
    expect(game.hand(scissors, Scissors.new).to_s).to eq "Two players with Scissors, the game is tied"
  end

  it "happens that Rocks beat Scissors" do
    expect(game.hand(scissors, rock).to_s).to eq "Second player's Rock beats first player's Scissors"
    expect(game.hand(rock, scissors).to_s).to eq "First player's Rock beats second player's Scissors"
  end

  it "happens that two Rocks tie" do
    expect(game.hand(rock, Rock.new).to_s).to eq "Two players with Rock, the game is tied"
  end

  it "happens that Papers beat Rocks" do
    expect(game.hand(rock, paper).to_s).to eq "Second player's Paper beats first player's Rock"
    expect(game.hand(paper, rock).to_s).to eq "First player's Paper beats second player's Rock"
  end

  it "happens that two Papers tie" do
    expect(game.hand(paper, Paper.new).to_s).to eq "Two players with Paper, the game is tied"
  end
end