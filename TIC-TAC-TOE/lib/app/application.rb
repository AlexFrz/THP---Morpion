class Application      # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
      def perform
        puts "\n  ---------------------------------------"
        puts " |         WELCOME TO THE MORPION !       |"
        puts "  ----------------------------------------"
        puts "Yessai, bienvenue à vous, mes ptits cochons. "
        puts "J'espère que vous êtes stratégiques et que vous allez pas faire égalité sur 6 parties d'affilées. Dans le cas présent, je m'autodétruirait et ferais exploser ton ordinateur. "
        puts "Le but du jeu est simple, détruire son adversaire psychologiquement en lui mettant des petites claquounettes derrière la tête pour qu'il ne puisse plus réfléchir et..."
        puts "BIIIIM, coup de grâce, tu coches les 3 cases en ligne, ou en diagonale."
        puts "L'adversaire tombe, genoux à terre. Mais il est chaud pour une partie revanche. Il va falloir redoubler d'effort, pour l'exploser une bonne fois pour toutes."
        puts "PS: si tu joue contre un enfant, laisses-le gagner, fais pas le crevard."

    
        game = Game.new
        view = Show.new
    
        while game.game_status == "game_on"
          view.show_board(game.board)
          game.launch_the_game
          game.game_end
          if game_status = "finished"
            view.show_board(game.board)
          end
          game.whose_turn_is_it?
        end   
      end
    
    end
  
  
  
  
  Application.new.perform