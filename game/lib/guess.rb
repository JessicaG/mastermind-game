class Guess
  attr_reader   :content
              
  def initialize(string)
    @content      = string.chars.map(&:upcase)
  end

  def to_s
    @content.join('')
  end

  def self.valid?(guess)
    guess.to_s.upcase =~ /^[RGBY]{4}$/
  end

end
