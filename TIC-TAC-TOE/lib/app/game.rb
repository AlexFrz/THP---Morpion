class Game
    attr_accessor :board, :players, :who_is_next, :game_status

 def initialize
    
    #création des variables
    @board = Board.new
    @players = []
    @who_is_next = rand(0..1)
    @game_status = "game_on"

    puts "\nQuel est le prénom du premier joueur ?"
    print "> "
    name_player_1 = gets.chomp

    puts "\nEt celui du deuxième ?"
    print "> "
    name_player_2 = gets.chomp

    puts "\nQuels pions le premier joueur choisit-il ('x' ou 'o') ?"
    print "> "
    symbol_player_1 = gets.chomp

    while symbol_player_1 != 'x' && symbol_player_1 != 'o' do
        puts "\nCette sélection n'est pas possible, choisis entre 'x' ou 'o'"
        print "> "
        symbol_player_1 = gets.chomp
      end

      if symbol_player_1 == 'x'
        symbol_player_2 = 'o'
      else
        symbol_player_2 = 'x'
      end

    player1 = Player.new(name_player_1, symbol_player_1)
    player2 = Player.new(name_player_2, symbol_player_2)
    @players.push(player1, player2)

  end

  def launch_the_game
    #lancement du tour
    puts "\nC'est au tour de #{@players[@who_is_next].nickname} de jouer !"
    puts "\nQuelle case veux-tu remplir (A1...C3) ?"
    print "> "
    answer = gets.chomp

    #si la référence de la case renseignée n'existe pas, mauvaise saisie ou mauvais format de saisie
    while answer != 'A1' && answer != 'A2' && answer != 'A3' && answer != 'B1' && answer != 'B2' && answer != 'B3' && answer != 'C1' && answer != 'C2' && answer != 'C3' do
        puts "\nTu t'es trompé de sélection, choisis une référence des 9 cases entre 'A1' et 'C3' !"
        print "> "
        answer = gets.chomp
    end

    #joue la case renseignée sauf si elle est déjà occupée
    until @board.change_state(answer, @players[who_is_next].symbol) do
      puts "\nCette case est déjà remplie, choisis-en une autre !"
      print "> "
      answer = gets.chomp
    end

    def game_end
        #vérifie que le jeu n'est pas terminé et affiche le message approprié
        #si c'est le cas
        if @board.is_game_over? == "continue"
          puts "\nContinuons la partie !"
        elsif @board.is_game_over? == "full"
          puts "\nLa partie est terminée ! Aucun des deux joueurs n'a gagné !"
          @game_status = "finished"
        elsif @board.is_game_over? == "x" && @players[0].symbol == "x"
          puts "\nLa partie est terminée ! #{@players[0].nickname} a gagné !"
          @game_status = "finished"
        else
          puts "\nLa partie est terminée ! #{@players[1].nickname} a gagné !"
          @game_status = "finished"
        end
      end

      def whose_turn_is_it?
        #passage de relai à l'autre joueur en actualisant la variable à qui le tour
        @who_is_next += 1
        if @who_is_next > 1
          @who_is_next = 0
        end
      end
    end
end