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

end