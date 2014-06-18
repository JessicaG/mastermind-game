class SequenceMatcher
  attr_reader :guess,
              :secret_sequence

  def initialize(guess, secret_sequence)
    @guess           = guess.chars
    @secret_sequence = secret_sequence.chars
  end

  def guess_count
    guess.count
  end

  def match?
    guess == secret_sequence
  end

  def correct_position_count
    count = 0
    guess.each_with_index do |letter, index|
      count += 1 if letter == secret_sequence[index]
    end
    count
  end

  def match_count
    ##is this the best way to match? Using chars and mapping? should i do each insted?

    count = 0
    guess.each do |letter|
      if secret_sequence.include?(letter)
        count += 1
        secret_sequence.slice!(guess.index(letter))
      end
    end
    count

    # letters = []
    # letters = guess.map do |letter|
    #   letter if secret_sequence.include?(letter)
    # end
    #
    # letters.length
  end
end
