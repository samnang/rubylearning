=begin
  Exercise5. Here's code for the part of a game that saves the game state to a file. As a deterrent against cheating, when the game loads a save file it performs a simple check against the file's modification time. If it differs from the timestamp recorded inside the file, the game refuses to load the save file.

=end

class Game
  attr_accessor :score

  def save_game(filename)
    File.open(filename, "w") do |f|
      f.puts @score
      f.puts Time.now.to_i
    end
  end

  def load_game(filename)
    raise ArgumentError, "invalid filename." unless File.exist?(filename)

    File.open(filename) do |f|
      lines = f.readlines.map(&:strip)
      raise "I suspect you of cheating." unless lines[1].to_i == f.mtime.to_i

      @score = lines[0]
    end
  end
end


game = Game.new
game.score = 10
game.save_game("game.sav")
sleep(2)
game.load_game("game.sav")
puts game.score

File.open("game.sav", "r+b") { |f| f.write("9") }
game.load_game("game.sav") #RuntimeError: I suspect you of cheating.
