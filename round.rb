class Round

	def initialize
		@board = Board.new
	end

	def start
		Interface.start_message
		player_choose_marker
		create_computer_challenger(@human.marker)
		player_sequence_selection
		lets_play
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

	def lets_play
		begin
			@players.each do |player|
				Interface.display_board(@board.boxes)
				Interface.whose_turn(player)
				player.move(@board)
				@turn = player.class.name
				break if @board.winner? || @board.tie?
			end
		end until @board.winner? || @board.tie?
		Interface.display_board(@board.boxes)
		if @board.tie?
			Interface.tie_message
		else
			Interface.winner_message(@turn)
		end
	end

end