require_relative './test_helper'
require_relative '../lib/sequence'
require_relative '../lib/guess'
require_relative '../lib/sequence_matcher'

class SequenceMatcherTest < Minitest::Test

  def test_it_has_a_secret_sequence
    matcher = SequenceMatcher.new("rgby", "rgby")
    assert_equal ["r","g","b","y"], matcher.secret_sequence
  end

  def test_it_can_match_sequences
    matcher = SequenceMatcher.new("brrr", "brrr")
    assert matcher.match?

    matcher = SequenceMatcher.new("gyrb", "gryb")
    refute matcher.match?
  end

  def test_it_can_return_matching_letters
    matcher = SequenceMatcher.new("bbbr", "rygg")
    assert_equal 1, matcher.match_count
  end

  def test_it_can_return_matching_letters
    matcher = SequenceMatcher.new("bbgr", "rygg")
    assert_equal 2, matcher.match_count
  end

  def test_it_can_return_matching_letters
    matcher = SequenceMatcher.new("bygr", "rygg")
    assert_equal 3, matcher.match_count
  end

  def test_it_return_number_of_correct_positions
    matcher = SequenceMatcher.new("bggr", "rygg")
    assert_equal 1, matcher.correct_position_count
  end

  def test_it_return_number_of_correct_positions
    matcher = SequenceMatcher.new("bygr", "rygg")
    assert_equal 2, matcher.correct_position_count
  end



end
