class Game
  attr_reader :guess_record,
              :guess

  def initialize
    @guess        = guess
    @guess_record = []
  end

  def add_guess
    @guess_record << @guess
  end

  def counts_turns
  end

  def guess_history
  end

end
