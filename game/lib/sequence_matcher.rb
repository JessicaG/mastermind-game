class SequenceMatcher
  attr_reader :guess,
              :secret_sequence

  def initialize(guess, secret_sequence)
    @guess = guess
    @secret_sequence = secret_sequence
  end

  def guess_count
    guess.count
  end

  def match?
    guess == secret_sequence
  end

  def correct_position_count
    count = 0
    [0,1,2,3].each do |index|
      if @guess[index] == @secret_sequence[index]
        count += 1
      end
    end
    count
  end

  def match_count
    ##is this the best way to match? Using chars and mapping? should i do each insted?
    letters = []
      g = guess.chars
      s = secret_sequence.chars
        letters = g.map do |letter| letter if s.include?(letter)
        end
      letters.join.length
  end
end
