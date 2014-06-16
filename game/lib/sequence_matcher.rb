class SequenceMatcher
  attr_reader :guess,
              :sequence

  def initialize(guess, sequence)
    @guess      = guess
    @sequence   = sequence
    @matches    = @positions = 0
  end

  def match?

  end

  def include?(character)

  end

  def position?(character, index)
    
  end

  def match_hash
    full_match = (@matches == sequence.count) && (@positions == sequence.count)
    { matches: @matches, positions: @positions, full_match: full_match, sequence: sequence, guess: @guess }
  end

end
