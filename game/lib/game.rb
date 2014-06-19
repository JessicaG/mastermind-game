class Game
  attr_reader :guess_record,
              :guess,
              :started_at

  def initialize
    @guess        = guess
    @guess_record = []
    @started_at   = Time.now
  end

  def add_guess
    @guess_record << @guess
  end

  def counts_turns
  end

  def guess_history
  end

end
