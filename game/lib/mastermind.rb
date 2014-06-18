class REPL
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

  def print_intro
    puts 'Welcome to the MASTER OF MINDS. Choose your fate... (p)lay, read the (i)nstructions, or (q)uit?'
  end

  def print_outro
    print 'You are leaving the master of minds, making you a minor of minds, sucka. Choose (p)lay to run again.'
  end

  def play_game
    @Game
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
