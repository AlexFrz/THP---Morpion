require 'pry'

    
class Player

  attr_accessor :nickname, :symbol

  def initialize(name, symbol)
    @nickname = name
    @symbol = symbol
  end

end