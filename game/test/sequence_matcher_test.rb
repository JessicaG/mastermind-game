require_relative './test_helper'
require_relative '../lib/sequence'
require_relative '../lib/guess'
require_relative '../lib/sequence_matcher'

class SequenceMatcherTest < Minitest::Test

  def test_it_has_a_overall_sequence
    matcher = SequenceMatcher.new("rgby", "rgby")
    assert_equal "rgby", matcher.secret_sequence
  end

  def test_it_has_a_guess_sequence
    matcher = SequenceMatcher.new("rrrb", "rrrb")
    assert_equal "rrrb", matcher.guess
  end

  def test_it_can_match_sequences
    matcher = SequenceMatcher.new("brrr", "brrr")
    assert matcher.match?

    matcher = SequenceMatcher.new("gyrb", "gryb")
    refute matcher.match?
  end

  def test_it_can_return_matching_letters
    matcher = SequenceMatcher.new("rygg", "bbbr")
    assert_equal 1, matcher.match_count
  end

  def test_it_can_return_matching_letters
    matcher = SequenceMatcher.new("rygg", "bbgr")
    assert_equal 2, matcher.match_count
  end

  def test_it_can_return_matching_letters
    matcher = SequenceMatcher.new("rygg", "bygr")
    assert_equal 3, matcher.match_count
  end

  ##review position matching?##

end
