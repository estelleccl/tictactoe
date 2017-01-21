class Computer

	attr_reader :marker

	def initialize(player_marker)
		@marker = switch_marker(player_marker)
	end

	def switch_marker(player_marker)
		player_marker == 'X' ? 'O' : 'X'
	end

	def move(board)
		Interface.computer_thinking
		computer_move = minimax(board,self.marker)
		board.place_move(computer_move, self.marker)
	end

	def minimax(board,current_player,depth=0)

		if board.tie?
			return 0
		elsif board.game_over?
			return -10
		end

	end

end