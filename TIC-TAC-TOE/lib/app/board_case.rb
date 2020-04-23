class BoardCase
    #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
    attr_accessor :position, :content
    
    def initialize(position, content)
      @position = position
      @content = content
    end
    
end