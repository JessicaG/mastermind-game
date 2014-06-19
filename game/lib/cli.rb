require 'pry'
require 'colorize'
require_relative 'message_printer'

class CLI
include MessagePrinter

attr_accessor :win,
              :out_of_turns

  def initialize
    @game            = Game.new
  end

  def process_input(input)
    input.split
  end

  def play_game
    generator       = SequenceGenerator.new(4, %w[g b r y])
    secret_sequence = generator.generate.secret_sequence
    turn_count      = 0
    out_of_turns    = false
    win             = false

    until win || out_of_turns
      MessagePrinter.initial_prompt
      input     = gets.strip
      if input  == 'q' then
        next
      end
      guess      = Guess.new(input).to_s
      matcher    = SequenceMatcher.new(guess, secret_sequence)
      if !Guess.valid?(guess) then
         MessagePrinter.guess_invalid
        next
      end
      turn_count = turn_count +1
      matches    = matcher.match_count
      positions  = matcher.correct_position_count
      MessagePrinter.guess_summary(matches, positions, turn_count)
      out_of_turns = turn_count >= 15
      puts secret_sequence
      win = matcher.match?
      if win
        MessagePrinter.win_message(play_time)
      end
    end
  end

  def play_time
    (Time.now - @game.started_at).to_i
  end

  def run
    MessagePrinter.print_intro
    input = ""
    until input == "q"
      print "(p)lay, read the (i)nstructions, or (q)uit?: "
      input = gets.strip

      play_game                       if input == "p"
      MessagePrinter.get_instruction  if input == "i"
    end
    MessagePrinter.print_outro(play_time)
  end
end
