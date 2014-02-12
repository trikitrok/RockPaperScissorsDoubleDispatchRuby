class RockPaperScissors
  def hand(g1, g2)
    g1.play_against(g2)
  end 
end

class Rock
  def play_against(other)
    other.play_against_rock(self)
  end

  def play_against_scissors(aScissors)
    Lose.new(aScissors, self)
  end

  def play_against_rock(aRock)
    Tie.new(self)
  end

  def play_against_paper(aPaper)
    Win.new(aPaper, self)
  end

  def to_s 
    "Rock"
  end
end

class Paper
  def play_against(other)
    other.play_against_paper(self)
  end

  def play_against_scissors(aScissors)
    Win.new(aScissors, self)
  end

  def play_against_rock(aRock)
    Lose.new(aRock, self)
  end

  def play_against_paper(aPaper)
    Tie.new(self)
  end

  def to_s 
    "Paper"
  end 
end

class Scissors
  def play_against(other)
    other.play_against_scissors(self)
  end

  def play_against_rock(aRock)
    Win.new(aRock, self)
  end

  def play_against_paper(aPaper)
    Lose.new(aPaper, self)
  end

  def play_against_scissors(aScissors)
    Tie.new(self)
  end

  def to_s 
    "Scissors"
  end 
end

class Win
  def initialize(g1, g2)
    @g1 = g1
    @g2 = g2
  end

  def to_s
    "First player's " + @g1.to_s + " beats second player's " + @g2.to_s
  end
end

class Lose
  def initialize(g1, g2)
    @g1 = g1
    @g2 = g2
  end

  def to_s
    "Second player's " + @g2.to_s + " beats first player's " + @g1.to_s
  end
end

class Tie 
  def initialize(g)
    @g = g
  end

  def to_s
    "Two players with " + @g.to_s + ", the game is tied"
  end
end