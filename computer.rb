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

		scores = []

		board.available_boxes.each do |box|
			board.place_move(box,current_player)
			score = -minimax(board, switch_marker(current_player), depth + 1)
			scores << [box, score]
			board.reset_box(box)
		end
		best_move = scores.max_by {|box, score| score}[0]
		best_score = scores.max_by {|box, score| score}[1]

		if depth > 0
			return best_score
		else
			return best_move
		end
	end
end