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

		
	end
end