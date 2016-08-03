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
    array = 
      %{\n
      1. Print Output 1
      2. Print Output 2
      3. Print Output 3
      4. Print Entire Solution
      5. Email Entire Solution
      }.split("") 
        
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

  def respond_to_input
    input = gets.strip
    case input
    when "1"
      clear;print "------------------------------------------\n"
      @printer.output_1
      print "------------------------------------------"
    when "2"
      clear;print "------------------------------------------\n"
      @printer.output_2
      print "------------------------------------------"
    when "3"
      clear;print "------------------------------------------\n"
      @printer.output_3
      print "------------------------------------------"
    when "4"
      clear;print "------------------------------------------\n"
      @printer.print_all
      print "------------------------------------------"
    when "5"
      puts "Who should I send this email to?"
      receiver = gets.strip
      email_sender = EmailSender.new(@printer.email_all, receiver)
      email_sender.send_email
      clear;print "Your email was successfully sent to:\n#{receiver}\n"
    when "exit", "quit", "end", "q"
      abort("\nBye for now!")
    else
      puts red('Please choose a valid selection:')
      respond_to_input
    end
  end
end
