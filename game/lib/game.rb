require_relative '../lib/guess'
require_relative '../lib/sequence_generator'
require_relative '../lib/sequence_matcher'

class Game
  attr_reader :guess_record,
              :guess,
              :started_at

  def initialize
    @guess        = guess
    @guess_record = []
    @started_at   = Time.now
  end

  def add_guess(guess)
    @guess_record << @guess
  end

  def counts_turns
  end

  def guess_history
  end

  # def start
  #   @sequence = SequenceGenerator.new
  # end

end
