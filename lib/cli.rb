class CLI
  include CLIHelpers

  def initialize
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
    respond
  end

  def respond
    input = gets.strip
    case input.to_i
    when 1
      clear;print "------------------------------------------\n"
      @printer.output_1
      print "------------------------------------------"
    when 2
      clear;print "------------------------------------------\n"
      @printer.output_2
      print "------------------------------------------"
    when 3
      clear;print "------------------------------------------\n"
      @printer.output_3
      print "------------------------------------------"
    when 4
      clear;print "------------------------------------------\n"
      @printer.print_all
      print "------------------------------------------"
    else
      puts red('Please choose a valid selection:')
      respond
    end
    puts green("\nWould you like to make another selection? (y/n)")
    offer_another_selection
  end
  
  def offer_another_selection
    input = gets.strip
    if input == "y" || input == "Y"
      show_options 
    elsif input == "n" || input == "N"
      abort("\nBye for now!")
    else
      puts red('Please choose a valid selection:')
      offer_another_selection
    end
  end

end

