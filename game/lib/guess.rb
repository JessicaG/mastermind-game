class Guess
  attr_reader   :content
                # :started_at
  # attr_accessor :Game

  def initialize(string)
    @content      = string.chars.map(&:upcase)
    @started_at   = Time.now
  end

  def to_s
    @content.join('')
  end

  def self.valid?(guess)
    guess.to_s.upcase =~ /^[RGBY]{4}$/
  end

end
