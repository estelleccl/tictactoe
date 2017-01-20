class Board

	attr_reader :boxes

	def initialize
		@boxes = (1..9).to_a
		@ctr = 0
	end

	def valid_input?(choice)
		@boxes.include?(choice)
	end

	def place_move(choice, marker)
		@boxes[choice-1] = marker
	end

	def winner?
		@ctr += 1
		duplicate_winning_board
		if @ctr > 2
			@winning_combination_board.each do |combi|
				if combi.uniq.length == 1
					@winner = combi.uniq
					return true 
				end
			end
		end
		false
	end

	def tie?
		@boxes.all? {|box| box.is_a?(String) }
	end

	def duplicate_winning_board
		@winning_combination_board = [
			[@boxes[0],@boxes[1],@boxes[2]],
			[@boxes[3],@boxes[4],@boxes[5]],
			[@boxes[6],@boxes[7],@boxes[8]],
			[@boxes[0],@boxes[3],@boxes[6]],
			[@boxes[1],@boxes[4],@boxes[7]],
			[@boxes[2],@boxes[5],@boxes[8]],
			[@boxes[0],@boxes[4],@boxes[8]],
			[@boxes[0],@boxes[4],@boxes[8]],
			[@boxes[6],@boxes[4],@boxes[2]]
		]
	end

end