require_relative './test_helper'
require_relative '../lib/guess_printer'

class GuessPrinterTest < Minitest::Test

# number of characters correct
# number of positions correct
# number of turns

  def correct_match_answer
    "WHOA. You guessed all four of my colors correctly! Nice work!"
  end

  def incorrect_match_answer(guess, sequence_number, position_number)
    "'#{guess}' has #{sequence_number} of the correct elements with #{postion_number} in the correct position."
  end

  def test_it_returns_a_correct_answer_message
    printer = GuessPrinter.new
    assert_equal printer.message(4,4,1), correct_match_answer
  end

  def test_it_returns_an_informative_answer_message
    printer = GuessPrinter.new
    assert_equal printer.message(3,3,2), "fill me in with the correct stuff"
  end

  #
  # def test_output_guess_with_correct_match
  #   assert_equal correct_match, GamePrinter.output_guess(correct_match)
  # end
  #
  #  def test_output_guess_with_incorrect_match
  #    assert_equal incorrect_match, GamePrinter.output_guess(incorrect_match)
  #  end
end
