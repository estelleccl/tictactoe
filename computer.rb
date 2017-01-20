class Computer

	attr_reader :marker

	def initialize(player_marker)
		@marker = switch_marker(player_marker)
	end

	def switch_marker(player_marker)
		player_marker ? 'O' : 'X'
	end

end