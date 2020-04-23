class Board
#TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
attr_accessor :board_cases_array, :round_count


  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @board_cases_array = []
    @round_count = 0

    ['A', 'B', 'C'].each do |letter|
    (1..3).each do |number|
    @board_cases_array << BoardCase.new("#{letter}#{number}", '')
        end 
    end
  end

  def change_state(position_to_change, symbol)
    array_of_cases = ['A1','A2','A3','B1','B2','B3','C1','C2','C3']
    index_case = array_of_cases.index(position_to_change).to_i
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    if @board_cases_array[index_case].content.empty?
        @board_cases_array[index_case].content = symbol
        puts "\nTu as joué la case #{position_to_change} !"
        @round_count += 1
        return true
      else
        return false
      end
  
  end

  def is_game_over?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    
    #Toutes les possibilités de scénatios gagnants (ligne ou diagonale)
    win_scenarios = [
        ['A1','A2','A3'], ['B1','B2','B3'], ['C1','C2','C3'], ['A1','B1', 'C1'], 
        ['A2','B2','C2'], ['A3','B3','C3'], ['A1','B2','C3'], ['A3','B2','C1']
      ]
    
    #Création de deux arrays de vérification des X et des O
        x_board_cases_array = []
        o_board_cases_array = []

    #Pour chaque case de la board, on vérifie si il y a un X, ou un Y, et on range sa position dans l'array correspondant
    @board_cases_array.each do |board_case|
        if board_case.content == 'x'
            x_board_cases_array << board_case.position
        elsif board_case.content == 'o'
            o_board_cases_array << board_case.position
        end
    end

    #Vérification: au bout de 9 tours, la board est pleine. Égalité
    #Si l'un des scénarios victoire est vérifié, alors c'est le joueur correspondant l'heureux vainqueur. 
    if @round_count == 9 
        return "full"
    elsif win_scenarios.any? { |win_scenario| win_scenario.all? { |ref| x_board_cases_array.include?(ref) } }
        return "x"
    elsif win_scenarios.any? { |win_scenario| win_scenario.all? { |ref| o_board_cases_array.include?(ref) } }
        return "o"
    else
        return "continue"
    end
  
    end
  
  end

