class REPL

  def get_instruction
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"

    input = gets.strip
  end

  def play_game
    ##call in game here?##
  end

  def print_intro
    puts "Welcome to MASTERMIND. Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def print_outro
    print "You are leaving the master of minds, making you a minor of minds."
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
