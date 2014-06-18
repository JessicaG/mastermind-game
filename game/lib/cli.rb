class CLI
  def self.run
    new(game).start
  end

  attr_reader :command,
              :parameters,
              :game

  def initialize(game)
    @command    = ""
    @parameters = ""
    @game       = game
  end

  def format_parameters(parameters)
    parameters.join(" ").gsub('"', '')
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

  def format_parameters(parameters)
    parameters.join(" ").gsub('"', '')
  end

  def execute_command
    case command
    when "i" || "Instructions" || "(I)nstructions"
      puts 'I will be the codemaker, you will be the codebreaker. The codemaker chooses a pattern of four code pegs. Duplicates are allowed, so the player could even choose four codes of the same color. The chosen pattern is entered into the command line. You must guess the pattern, in both order and color. Once played, I will provides feedback for both color and position.'
    end

  def get_instruction
    puts 'I have generated a sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What is your guess?'
    input = gets.strip
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
