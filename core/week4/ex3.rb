=begin
  Exercise3. Modify your Deaf Grandma program (Week 3 / Exercise6): What if grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times, but not in a row, you should still be talking to grandma. You must shout BYE three separate times. If you shout BYEBYEBYE or BYE BYE BYE, grandma should pretend not to hear you (and not count it as a BYE).
  
=end

class Grandma
  Response = "Grandma responds: "
  Exit_When_Bye_Count = 3
  
  def initialize
    @bye_count = 0
  end
  
  def start_conversation
    while grandma_response(ask_user_input) do end
  end
  
  private
  def ask_user_input
    print "You enter: "
    gets.chomp
  end
  
  def grandma_response(input)
    if stop_conversation?(input)
      puts Response + "Good luck! BYE..."  
    else
      puts Response + (input.upcase! ? "HUH?! SPEAK UP, SONNY!" :
                                       "NO, NOT SINCE #{Random.new.rand(1930..1950)}!")
      return true
    end        
  end

  def stop_conversation?(input)
    if input == "BYE"
      @bye_count += 1
      
      return true if reach_bye_count_limited?
    else
      @bye_count = 0
    end
    
    false
  end
  
  def reach_bye_count_limited?        
    @bye_count == Exit_When_Bye_Count
  end
end

Grandma.new.start_conversation

