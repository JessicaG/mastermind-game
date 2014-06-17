require_relative './test_helper'

class CLITest < Minitest::Test
  attr_reader :cli

  def setup
    # repository = EntryRepository.in("./test/fixtures")
    # phone_book = PhoneBook.new(repository)
    # @cli ||= CLI.new(phone_book)
  end

  def test_it_exists
    assert cli
  end

  def test_it_has_a_command
    assert cli.command
  end

  def test_it_has_parameters
    assert cli.parameters
  end
end

#   def test_it_has_a_phone_book
#     assert cli.phone_book
#   end
#
#   def test_it_process_input
#     input  = 'lookup "Smith, Alice"'
#     result = cli.process_input(input)
#
#     assert_equal ['lookup', '"Smith,', 'Alice"'], result
#   end
#
#   def test_it_formats_parameters
#     input      = 'lookup "Smith, Alice"'
#     parts      = cli.process_input(input)
#     parameters = parts [1..-1]
#     result     = cli.format_parameters(parameters)
#
#     assert_equal "Smith, Alice", result
#     ##tutorial uses the below, the above was done in class with Jorge##
#     # parameters = ['"Smith,', 'Alice"']
#     # result     = cli.format_parameters(parameters)
#     #
#     # assert_equal "Smith, Alice", result
#   end
#
#   def test_it_assigns_instructions
#     input  = "lookup \"Smith, Alice\""
#     parts  = cli.process_input(input)
#     cli.assign_instructions(parts)
#
#     assert_equal "lookup",       cli.command
#     assert_equal "Smith, Alice", cli.parameters
#   end
#
#   def test_it_assigns_instructions_with_flag
#     input  = 'lookup -r "(123) 345-6789"'
#     parts  = cli.process_input(input)
#     cli.assigns_instructions(parts)
#
#     assert_equal 'lookup -r', cli.command
#     assert_equal '(123) 345-6789', cli.parameters
#   end
#
#   def test_it_executes_commands
#     input  = "lookup \"Smith, Alice\""
#     parts  = cli.process_input(input)
#     cli.assigns_instructions(parts)
#     result = cli.execute_command.first
#
#     assert_equal "Alice",            result.first_name
#     assert_equal "Smith",            result.last_name
#     assert_equal ["(111) 000-1234"], result.numbers
#   end
#
# end
#
