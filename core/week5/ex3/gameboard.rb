class GameBoard

	def set_locations_cells(cells)
		@location_cells = cells
		@no_of_hit = @no_of_miss = 0
	end

	def check_yourself(guess)
		@last_guess = guess.to_i

		in_location_cell? ? hit_guess : miss_guess
	end

	private
	def in_location_cell?
		@location_cells.include? @last_guess
	end

	def hit_guess
		@no_of_hit += 1
		@location_cells.delete(@last_guess)
		
		if hit_all_cells?
			puts "End"
			puts "%d missed of %d guesses." % [@no_of_miss, @no_of_hit + @no_of_miss]

			return 'kill'
		else
			puts "Hit"
		end
	end

	def hit_all_cells?
		@location_cells.empty?
	end

	def miss_guess
		@no_of_miss += 1
		puts "Miss"
	end
end
