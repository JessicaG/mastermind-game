require_relative './test_helper'

class CLITest < Minitest::Test
  attr_reader :cli

  def setup
    @cli ||= CLI.new(game)
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
