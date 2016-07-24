class Parser
  include Formatter

  def initialize(file_path)
    @file_path = file_path
  end

  def parse
    file = File.open(@file_path)
    contents = file.read
    array = contents.split("\n").map do |content|
      normalize(content)
    end
  end
end
