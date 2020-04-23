class Show


  
        def show_board(board)
          puts "\nVoici l'état du plateau :"
          
          puts "\n    " + " " * 4 + "A" + " " * 7 + "B" + " " * 7 + "C"
          puts "\n     " + "-" * 23
          puts "    |" + " " * 7 + "|" + " " * 7 + "|" + " " * 7 + "|"
          print " 1  |" + " " * 3 
          if board.board_cases_array[0].content.empty?
            print " "
          else
            print "#{board.board_cases_array[0].content}"
          end
          print " " * 3 + "|" 
          print " " * 3 
          if board.board_cases_array[3].content.empty?
            print " "
          else
            print "#{board.board_cases_array[3].content}" 
          end
          print " " * 3 + "|" 
          print " " * 3 
          if board.board_cases_array[6].content.empty? 
            print " "
          else
            print "#{board.board_cases_array[6].content}" 
          end
          puts " " * 3 + "|"
          puts "    |" + " " * 7 + "|" + " " * 7 + "|" + " " * 7 + "|"
          
          puts "     " + "-" * 23
          puts "    |" + " " * 7 + "|" + " " * 7 + "|" + " " * 7 + "|"
          print " 2  |" + " " * 3 
          if board.board_cases_array[1].content.empty?
            print " "
          else
            print "#{board.board_cases_array[1].content}"
          end
          print " " * 3 + "|" 
          print " " * 3 
          if board.board_cases_array[4].content.empty?
            print " "
          else
            print "#{board.board_cases_array[4].content}" 
          end
          print " " * 3 + "|" 
          print " " * 3 
          if board.board_cases_array[7].content.empty? 
            print " "
          else
            print "#{board.board_cases_array[7].content}" 
          end
          puts " " * 3 + "|"
          puts "    |" + " " * 7 + "|" + " " * 7 + "|" + " " * 7 + "|"
          
          puts "     " + "-" * 23
          puts "    |" + " " * 7 + "|" + " " * 7 + "|" + " " * 7 + "|"
          print " 3  |" + " " * 3 
          if board.board_cases_array[2].content.empty?
            print " "
          else
            print "#{board.board_cases_array[2].content}"
          end
          print " " * 3 + "|" 
          print " " * 3 
          if board.board_cases_array[5].content.empty?
            print " "
          else
            print "#{board.board_cases_array[5].content}" 
          end
          print " " * 3 + "|" 
          print " " * 3 
          if board.board_cases_array[8].content.empty? 
            print " "
          else
            print "#{board.board_cases_array[8].content}" 
          end
          puts " " * 3 + "|"
          puts "    |" + " " * 7 + "|" + " " * 7 + "|" + " " * 7 + "|"
          puts "     " + "-" * 23
        end
      
    
end
  