class REPL
  def self.run
    # repository = EntryRepository.in("./data")
    # phone_book = Game.new(repository)
    new(game).start
  end

  attr_reader :command,
              :parameters,
              :game

  def initialize(game)
    @command    = ""
    @parameters = ""
    @game = game
  end

  def start
    puts
    '*********+++++++++++++************=====================================***********+++++++++++++*********
     ||| Welcome to the MASTER OF MINDS. Choose your fate... (p)lay, read the (i)nstructions, or (q)uit?  |||
     |||                                                                                                  |||
     |||                                                                                                  |||
     |||                                                                                                  |||
     *********+++++++++++++************=====================================***********+++++++++++++*********'
    while command != "quit"
      print 'Because I am the Master of all games, I have decided to test your inferencing skillz by generating a n00b sequence with four elements made up of: (r)ed,
      (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game if you have had enough snark.
      What is your guess?'
      execute_command
    end
      puts "~z*Z~*Z~*z Sn00zE y0u l0Se, BuDdY!~z*Z~*Z~*z"
  end

  def get_instruction
    puts 'I have generated a n00b sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What is your guess?'

    input = gets.strip
  end

  def play_game
    ##call in game here?##
  end

  def print_intro
    puts 'Welcome to the MASTER OF MINDS. Choose your fate... (p)lay, read the (i)nstructions, or (q)uit?'
  end

  def print_outro
    print 'You are leaving the master of minds, making you a minor of minds, sucka.'
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

end
