class SequenceMatcher
  attr_reader :guess,
              :secret_sequence

  def initialize(guess, secret_sequence)
    @guess = guess
    @secret_sequence = secret_sequence
  end

  def match_count
    guess.count
  end

  def match?
    guess == secret_sequence
  end

  def match_count
    letters = []
      g = guess.chars
      s = secret_sequence.chars
        letters = g.map do |letter| letter if s.include?(letter)
        end
      letters.join.length
  end
end
