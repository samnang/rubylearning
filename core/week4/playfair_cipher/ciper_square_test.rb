$:.unshift File.dirname(__FILE__)

require 'ciper_square'
require 'minitest/spec'

MiniTest::Unit.autorun

describe CiperSquare do
  it "should draw text table" do
    table = CiperSquare.new("I Love Ruby.")

    output = table.draw
    output.must_equal <<-END
I L O V E
R U B Y A
C D F G H
K M N P Q
S T W X Z
END
  end  
end
