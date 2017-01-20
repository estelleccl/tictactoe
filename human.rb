class Human
	
	attr_reader :marker

	def initialize(marker)
		@marker = marker
	end

	def move(board)
		Interface.prompting_human_moves
		choice = prompt_user_to_move
		until board.valid_input?(choice)
			Interface.invalid_input
			choice = prompt_user_to_move
		end
		board.place_move(choice, marker)
	end

	def prompt_user_to_move
		choice = gets.chomp.to_i
		check_quit_board(choice)
		choice
	end

	def check_quit_board(choice)
		abort if choice == 11
	end

end