class Board

	attr_reader :boxes

	def initialize
		@boxes = (1..9).to_a
	end

	def valid_input?(choice)
		@boxes.include?(choice)
	end

	def place_move(choice, marker)
		@boxes[choice-1] = marker
	end


end