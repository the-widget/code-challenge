module CLIHelpers
  
  def animate
    sleep 0.01
  end

  def clear
    print "\e[2J\e[f"
  end

  def colorize(text, color_code)
    "\e[#{color_code}m#{text}\e[0m"
  end

  def red(text); colorize(text, 31); end
  def green(text); colorize(text, 32); end

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
    when "exit", "quit", "end", "q"
      abort
    else
      puts red('Please choose a valid selection:')
      respond_to_input
    end
  end

end