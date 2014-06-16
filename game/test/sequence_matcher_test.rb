require_relative './test_helper'
require_relative '../lib/sequence'
require_relative '../lib/guess'
require_relative '../lib/sequence_matcher'

class SequenceMatcherTest <Minitest::Test

  def sequence
    @sequence ||= Sequence.new(['r', 'g', 'b', 'y' ])
  end

  def test_does_not_have_a_character
    guess1 = Guess.new('rgby')
    refute SequenceMatcher.new(guess1, sequence).include?('x')
  end

  def test_has_a_correct_character
    guess1 = Guess.new('rgby')
    assert SequenceMatcher.new(guess1, sequence).include?('r', 1)
  end

  def test_it_does_not_have_a_correct_position
    guess1 = Guess.new('rgby')
    refute SequenceMatcher.new(guess1, sequence).position?('x', 1)
  end

  def test_it_has_a_correct_position
    guess1 = Guess.new('rgby')
    assert SequenceMatcher.new(guess1, sequence).position?('r', 1)
  end

  def test_it_has_multiple_correct_letters
    guess1 = Guess.new('rrr')
    sequence = SequenceMatcher.new(guess1)

    assert sequence.include?('r')
    assert sequence.include?('r')
    assert sequence.include?('r')
  end

  def test_guess_has_full_match
    ##Add in position##
    guess1 = Guess.new('rrrr')
    sequence = SequenceMatcher.new(guess1)

    assert sequence.include?('r')
    assert sequence.include?('r')
    assert sequence.include?('r')
    assert sequence.include?('r')
  end

  def test_duplicate_guess
    skip
    ##how to write this? Is it necessary?##
  end

end
