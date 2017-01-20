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
	end
end