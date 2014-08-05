require_relative './test_helper'
require_relative '../lib/guess'

class GuessTest <Minitest::Test

  def test_does_guess_have_four_characters
    game = Game.new
    guess = Guess.new('rgby')
    game.start

    #count minimum of characters
    game.guess(nil)
    assert_equal 0, game.guesses.count

    game.guess('rgby')
    assert_equal 1, game.guesses.count
  end

  def test_guess_is_empty?
    assert_equal [], Game.new.guess_record
  end

  def test_can_make_a_guess
    game = Game.new
    guess = Guess.new('rgby')

    game.add_guess
    assert_equal 1, game.guess_record.count
    assert_equal "rgby", game.guess_record.guesses
  end

  def test_new_sequence_for_new_game
    game = Game.new
    game.start
    assert game.sequence
  end

  def test_it_returns_true_for_a_valid_guess
    assert Guess.valid?('rgby')
    assert Guess.valid?('yyyy')
    assert Guess.valid?('ggrb')
    assert Guess.valid?('rrbb')
  end

  def test_it_returns_false_for_an_invalid_guess
    refute Guess.valid?('OOOO')
    refute Guess.valid?('0000')
    refute Guess.valid?(false)
    refute Guess.valid?(nil)
    refute Guess.valid?(0.1)
  end
end
