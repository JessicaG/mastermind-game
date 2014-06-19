require_relative './test_helper'
require_relative '../lib/game'
require_relative '../lib/guess'

class GameTest < Minitest::Test

  def test_start_new_game
    game = Game.new
  end

  def test_guess_record_begins_empty?
    assert_equal [], Game.new.guess_record
  end

  def test_count_guess_at_beginning_of_game
    game = Game.new
    assert_equal 0, game.guess_record.count
  end

  # def test_add_a_guess
  #   game = Game.new
  #   game.start
  #   game.guess('RGBY')
  #   assert_equal 1, g.guesses.count
  # end
  #
  # def test_new_sequence_when_start_of_a_game
  #   game = Game.new
  #   game.start
  #   assert game.sequence
  # end

  def track_number_of_turns_test
    game = Game.new
    guess = Guess.new

    game.add_guess
    assert_equal 1, game.guess_record.count
    game.add_guess
    assert_equal 2, game.guess_record.count
  end
end
