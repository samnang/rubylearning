=begin
  Exercise4. Write a Ruby program (call it p028swapcontents.rb) to do the following. Take two text files say A and B. The program should swap the contents of A and B. That is after the program is executed, A should contain B's contents and B should contains A's contents.
  
=end

require 'fileutils'

class FileSwap    
  def self.swap(file1, file2)
    backup_file = "#{file1}.bak"
    FileUtils.cp(file1, backup_file)
    FileUtils.mv(file2, file1)
    FileUtils.mv(backup_file, file2)
  end
end

FileSwap.swap("a.txt", "b.txt")
