class Sequence
  attr_reader :secret_sequence

  def initialize(sequence)
    @secret_sequence = sequence.upcase
  end

  def count
    @secret_sequence.count
  end

  def to_s
    @secret_sequence.join('')
  end
end
