class Interface
	class << self
		def start_message
			divider
			puts "Let's play Tic Tac Toe"
			divider
			choose_x_or_o
		end

		def choose_x_or_o
			puts "Please choose X or O to start playing. Q to Quit\n"
			divider
		end

		def divider
			puts "===================================="
		end

		def closing_message
			divider
			puts "I'm going to miss you. Let's Play Again Next Time. See You"
			divider
		end

		def choose_again_x_or_o
			puts "I'm sorry. You could only choose X or O only"
			choose_x_or_o
		end

		def display_board(board)
			divider
			soft_divider
			board.each_with_index do |position, index|
				print "| #{position} |"
				soft_divider if (index+1) % 3 == 0
			end
			puts "\n"
			divider
		end

		def whose_turn(player)
			puts "#{player.class.name}'s turn"
		end

		def prompting_human_moves
			puts "Please the enter number you want to place your marker. To quit - enter '11' "
			divider
		end

		def invalid_input
			puts "I'm sorry, This box has been picked or it is an invalid input."
			prompting_human_moves
		end

		def soft_divider
			puts "\n"
			puts " ---  ---  --- "
		end

		def winner_message(player)
			star_divider
			puts "#{player} Won!!!".center(35)
			star_divider
		end

		def star_divider
			puts "************************************"
		end

		def computer_thinking
			puts "I'm thinking..."
		  sleep(1)
		end
	end
end