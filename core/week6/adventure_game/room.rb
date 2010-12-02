class Room
	attr_accessor :exit_north, :exit_south, :exit_west, :exit_east

	def initialize(name, description, exit_north, exit_south, exit_west, exit_east)
		super(name, description)
		@exit_north = exit_north
		@exit_south = exit_south
		@exit_west = exit_west
		@exit_east = exit_east
	end
end
