require 'pry'

class CLI
  attr_reader :command

  def initialize
    @command    = ""
    @game       = Game.new
  end

  def process_input(input)
    input.split
  end

  def play_game
    generator       = SequenceGenerator.new(4, %w[g b r y])
    secret_sequence = generator.generate.secret_sequence
    win             = false

    until win
      puts "Mastermind Started."
      print "Enter your guess: "
      guess     = Guess.new(gets.strip).to_s
      matcher   = SequenceMatcher.new(guess, secret_sequence)
      matches   = matcher.match_count
      positions = matcher.correct_position_count
      puts "You have #{matches} correct colors, and #{positions} correct positions."
      win = matcher.match?
    end
    puts "Congratulations, you won."
  end

  def run
    print_intro
    input = ""

    until input == "q"
      print "Enter your command: "
      input = gets.strip

      play_game        if input == "p"
      get_instructions if input == "i"
    end

    print_outro
  end

  def print_intro
    puts 'Welcome to the MASTER OF MINDS. Choose your fate... (p)lay, read the (i)nstructions, or (q)uit?'
  end

  def print_outro
    print 'You are leaving the master of minds, making you a minor of minds, sucka.'
  end

  def get_instruction
    puts 'I have generated a sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.'
  end

  def execute_command
    case command
    when "i" || "Instructions" || "(I)nstructions"
      puts 'I will be the codemaker, you will be the codebreaker. The codemaker chooses a pattern of four color. Duplicates are allowed, so the player could even choose four codes of the same color. The chosen pattern is entered into the command line. You must guess the pattern, in both order and color. Once played, I will provides feedback for both color and position.'
    end
  end

end

# def format_parameters(parameters)
#   parameters.join(" ").gsub('"', '')
# end

# def start
#   print_intro
#   while command != "quit"
#     print 'What is your guess?'
#     parts = process_input(gets.strip)
#     execute_command
#   end
#   print_outro
# end


##Stupid shit to add in later
# '*********+++++++++++++************=====================================***********+++++++++++++*********
#  ||| Welcome to the MASTER OF MINDS. Choose your fate... (p)lay, read the (i)nstructions, or (q)uit?  |||
#  |||                                                                                                  |||
#  |||                                                                                                  |||
#  |||                                                                                                  |||
#  *********+++++++++++++************=====================================***********+++++++++++++*********'
# ~z*Z~*Z~*z Sn00zE y0u l0Se, BuDdY!~z*Z~*Z~*z
