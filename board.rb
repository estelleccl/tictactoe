class Board

	attr_reader :boxes, :winner

	def initialize
		@boxes = (1..9).to_a
		@winner = nil
	end

	def valid_input?(choice)
		@boxes.include?(choice)
	end

	def place_move(choice, marker)

		@boxes[choice-1] = marker
	end

	def winner?
		duplicate_winning_board
		@winning_combination_board.each do |combi|
			if combi.uniq.length == 1
				return combi.uniq 
			end
		end
		false
	end

	def tie?
		@boxes.all? {|box| box.is_a?(String) }
	end

	def game_over?
		winner?|| tie?
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

	def available_boxes
		available_boxes = []
		@boxes.each do |box|
			available_boxes << box if box.is_a?(Integer)
		end
		available_boxes
	end

	def reset_box(box)
		@boxes[box-1] = box
	end

end