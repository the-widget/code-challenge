class CyrusCodeChallenge::CLI
  include CLIHelpers

  def initialize
    ContactsCreator.call
    @printer = Printer.new
    greeting
  end
  
  def greeting
    array = "\nWelcome to Brennen's Cyrus Code Challenge Solution!\n".split("")
    array.each{|x| print green(x);animate}
    sleep 0.6
    show_options
  end
  
  def show_options
    array = "Please choose an option:".split("")
    array.each{|x| print x;animate};sleep 0.6
    array = "\n\n1. Print Output 1\n2. Print Output 2\n3. Print Output 3\n4. Print Entire Solution\n".split("")
    array.each{|x| print x;animate}
    serve_user
  end

  def serve_user
    respond_to_input
    puts green("\nWould you like to make another selection? (y/n)")
    offer_another_selection
  end
  
  def offer_another_selection
    input = gets.strip
    case input
    when "y", "Y"
      show_options 
    when "n", "N", "exit", "quit"
      abort("\nBye for now!")
    else
      puts red('Please choose a valid selection:')
      offer_another_selection
    end
  end

end

