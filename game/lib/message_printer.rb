require 'colorize'

module MessagePrinter

  def self.initial_prompt
    puts  "\n"
    print "Enter your guess (rgby): ".colorize(:cyan)
  end

  def self.guess_summary(matches, positions, turn_count)
    puts "You have #{matches} correct colors, and #{positions} correct positions, with (#{turn_count}/15) guesses left."
  end

  def self.guess_valid
    puts "You're a shitdiot, try again. Input MUST be (4) characters long and only contain charaters of (rgby) only."
  end

  def self.win_message
    puts "ZOMG! Congratulations, you won!"
  end

  def self.time_message(play_time)
    puts  "\n"
    puts "You played for #{play_time} seconds. Good for you, now go outside and see the sun."
  end

  def self.print_intro
    file = File.open("./assets/welcome.txt", "r")
    contents = file.read
    print contents
    puts 'Welcome to the MASTER OF MINDS. Choose your fate...'
  end

  def self.print_outro
    print 'You are leaving the master of minds, making you a minor of minds, sucka!'
  end

  def self.get_instruction
    puts 'I have generated a sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. You have 15 turns to guess the correct order. Use (q)uit at any time to end the game.'
  end


end
