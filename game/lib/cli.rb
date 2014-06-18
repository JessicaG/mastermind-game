class CLI
  attr_reader :command,
              # :parameters,
              :game

  def initialize
    @command    = ""
    # @parameters = ""
    @game       = Game.new
  end

  def start
    print 'Welcome to the MASTER OF MINDS. Choose your fate... (p)lay, read the (i)nstructions, or (q)uit?'
      get_instruction
    while command != "quit"
      print 'What is your guess?'
      parts = process_input(gets.strip)
      execute_command
    end
    puts print_outro
  end

  def process_input(input)
    input.split
  end

  def print_intro
    puts 'Welcome to the MASTER OF MINDS. Choose your fate... (p)lay, read the (i)nstructions, or (q)uit?'
  end

  def print_outro
    print 'You are leaving the master of minds, making you a minor of minds, sucka. Choose (p)lay to run again.'
  end

  def play_game
  end

  def run
    print_intro
    input = ""

    while input != "q"
      input = get_instruction
      if input == "p"
        play_game
      end
    end
    print_outro
  end

  def get_instruction
    puts 'I have generated a sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What is your guess?'
    input = gets.strip
  end


  # def format_parameters(parameters)
  #   parameters.join(" ").gsub('"', '')
  # end

  def execute_command
    case command
    when "i" || "Instructions" || "(I)nstructions"
      puts 'I will be the codemaker, you will be the codebreaker. The codemaker chooses a pattern of four code pegs. Duplicates are allowed, so the player could even choose four codes of the same color. The chosen pattern is entered into the command line. You must guess the pattern, in both order and color. Once played, I will provides feedback for both color and position.'
    end
  end

end



##Stupid shit to add in later
# '*********+++++++++++++************=====================================***********+++++++++++++*********
#  ||| Welcome to the MASTER OF MINDS. Choose your fate... (p)lay, read the (i)nstructions, or (q)uit?  |||
#  |||                                                                                                  |||
#  |||                                                                                                  |||
#  |||                                                                                                  |||
#  *********+++++++++++++************=====================================***********+++++++++++++*********'
# ~z*Z~*Z~*z Sn00zE y0u l0Se, BuDdY!~z*Z~*Z~*z
