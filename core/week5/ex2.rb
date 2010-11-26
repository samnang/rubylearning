class Shape
  def click
    rotate_360
    play_sound
  end

  def rotate_360
    raise "Must override on sub classes."
  end

  def play_sound
    puts "Play sound: " + sound_file
  end

  def sound_file
    "default file"
  end
end

class Square < Shape
  def rotate_360
    puts "rotating square 360"
  end

  def sound_file
    "square sound file"
  end
end

class Circle < Shape
  def rotate_360
    puts "no rotating for circle"
  end

  def sound_file
    "circle sound file"
  end
end

class Triangle < Shape
  def rotate_360
    puts "rotating triangle 360"
  end

  def sound_file
    "triangle sound file"
  end
end

#Running program
shapes = [Square.new, Circle.new, Triangle.new]
shapes.each do |shape|
  shape.click
end

