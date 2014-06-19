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
      puts  "\n"
      print "Enter your guess (rgby): "
      input     = gets.strip
      if input  == 'q' then
        break
      end
      guess     = Guess.new(input).to_s
      matcher   = SequenceMatcher.new(guess, secret_sequence)
      if !Guess.valid?(guess) then
        puts "You're a shitdiot, try again. Input MUST be (4) characters long and only contain charaters of (rgby) only."
        next
      end
      matches   = matcher.match_count
      positions = matcher.correct_position_count
      puts "You have #{matches} correct colors, and #{positions} correct positions."
      win = matcher.match?
      # execute_command
    end
    puts "Congratulations, you won." if win
  end

  def run
    print_intro
    input = ""

    until input == "q"
      print "(p)lay, read the (i)nstructions, or (q)uit?: "
      input = gets.strip

      play_game        if input == "p"
      get_instruction  if input == "i"
    end

    print_outro
  end

  def print_intro
    file = File.open("./assets/welcome.txt", "r")
    contents = file.read
    print contents
    puts 'Welcome to the MASTER OF MINDS. Choose your fate...'
  end

  def print_outro
    print 'You are leaving the master of minds, making you a minor of minds, sucka!'
  end

  def get_instruction
    puts 'I have generated a sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.'
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
