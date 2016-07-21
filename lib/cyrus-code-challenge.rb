module CyrusCodeChallenge
  VERSION = "0.0.0"
end

class CyrusCodeChallenge::CLI
  def initialize
    file = File.open("lib/input_files/comma.txt")
    contents = file.read
    contacts_info = (contents.split("\n")).map{|x|x.split(", ")}
    print contacts_info
  end
end