class Round

	def initialize
		@board = Board.new
	end

	def start
		Interface.start_message
		player_choose_marker
		create_computer_challenger(@human.marker)
		player_sequence_selection
	end

	def player_choose_marker
		choice = gets.chomp.upcase
		if choice == "O" || choice == "X"
			@human = Human.new(choice)
		elsif choice == "Q"
			Interface.closing_message
			abort
		else
			Interface.choose_again_x_or_o
			player_choose_marker
		end
	end

	def create_computer_challenger(player_choice)
		@computer = Computer.new(player_choice)
	end

	def player_sequence_selection
		@players = [@human, @computer].shuffle
	end

end