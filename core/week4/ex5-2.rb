class FileChanged
  def initialize(old_file_list, new_file_list)
    @old_file_list = old_file_list
    @new_file_list = new_file_list
  end
  
  def added_files
    @added_files ||= find_added_files
  end
  
  def find_added_files
    old_list = File.readlines(@old_file_list)
    new_list = File.readlines(@new_file_list)

    new_list - old_list
  end
end

puts FileChanged.new("old-inventory.txt", "new-inventory.txt").added_files
