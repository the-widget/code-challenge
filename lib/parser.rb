class Parser

  def initialize(file_path)
    @file_path = file_path
  end

  def parse
    file = File.open(@file_path)
    contents = file.read
    contents.split("\n").map{|content| content.gsub(/[,]|[|]/, "").split(" ")}
  end
end