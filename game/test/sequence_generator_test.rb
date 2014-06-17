require_relative './test_helper'
require_relative '../lib/sequence_generator'

class SequenceGeneratorTest <Minitest::Test

  def test_has_rgby_in_sequence_and_has_four_characters
    assert = SequenceGenerator.new(4, ["r", "g", "b", "y"])
  end

  # def test_is_different
  #   s = SequenceGenerator.new(4, ["r","g","b","y"])
  #   s1 = s.generate
  #   s2 = s.generate
  #   refute s1 == s2
  # end

end
