Expected Output:

Output 1:
Hingis Martina Female 4/2/1979 Green
Kelly Sue Female 7/12/1959 Pink
Kournikova Anna Female 6/3/1975 Red
Seles Monica Female 12/2/1973 Black
Abercrombie Neil Male 2/13/1943 Tan
Bishop Timothy Male 4/23/1967 Yellow
Bonk Radek Male 6/3/1975 Green
Bouillon Francis Male 6/3/1975 Blue
Smith Steve Male 3/3/1985 Red

Output 2:
Abercrombie Neil Male 2/13/1943 Tan
Kelly Sue Female 7/12/1959 Pink
Bishop Timothy Male 4/23/1967 Yellow
Seles Monica Female 12/2/1973 Black
Bonk Radek Male 6/3/1975 Green
Bouillon Francis Male 6/3/1975 Blue
Kournikova Anna Female 6/3/1975 Red
Hingis Martina Female 4/2/1979 Green
Smith Steve Male 3/3/1985 Red

Output 3:
Smith Steve Male 3/3/1985 Red
Seles Monica Female 12/2/1973 Black
Kournikova Anna Female 6/3/1975 Red
Kelly Sue Female 7/12/1959 Pink
Hingis Martina Female 4/2/1979 Green
Bouillon Francis Male 6/3/1975 Blue
Bonk Radek Male 6/3/1975 Green
Bishop Timothy Male 4/23/1967 Yellow
Abercrombie Neil Male 2/13/1943 Tan




class CyrusCodeChallenge::CLI
  def initialize
    file = File.open("lib/input_files/comma.txt")
    contents = file.read
    contacts_info = (contents.split("\n")).map{|x|x.split(", ")}
    contacts_info.each do |contact|
      CommaContacts.new(contact[0], contact[1], contact[2], contact[3], contact[4])
    end
    
    file = File.open("lib/input_files/pipe.txt")
    contents = file.read
    contacts_info = (contents.split("\n")).map{|x|x.split(" | ")}
    contacts_info.each do |contact|
      PipeContacts.new(contact[0], contact[1], contact[2], contact[3], contact[4], contact[5])
    end
    
    file = File.open("lib/input_files/space.txt")
    contents = file.read
    contacts_info = (contents.split("\n")).map{|x|x.split(" ")}
    contacts_info.each do |contact|
      SpaceContacts.new(contact[0], contact[1], contact[2], contact[3], contact[4], contact[5])
    end
    
    puts "Output 1:", ""
    sorted = Contacts.all.sort_by{|contact| [contact.gender, contact.last_name]}
    sorted.each do |contact|
      puts "#{contact.last_name} #{contact.first_name} #{contact.gender} #{contact.birth_date} #{contact.favorite_color}"
    end
    puts
    
    puts "Output 2:", ""
    sorted = Contacts.all.sort_by{|contact| [contact.birth_date.split("/")[2], contact.last_name]}
    sorted.each do |contact|
      puts "#{contact.last_name} #{contact.first_name} #{contact.gender} #{contact.birth_date} #{contact.favorite_color}"
    end
    puts
    
    puts "Output 3:", ""
    sorted = Contacts.all.sort{|a,b| b.last_name <=> a.last_name}
    sorted.each do |contact|
      puts "#{contact.last_name} #{contact.first_name} #{contact.gender} #{contact.birth_date} #{contact.favorite_color}"
    end
    puts
  end
end

class Contacts
  @@all = []
  def self.all
    @@all
  end
end

class CommaContacts < Contacts
  attr_accessor :last_name, :first_name, :gender, :favorite_color, :birth_date
  def initialize(last_name, first_name, gender, favorite_color, birth_date)
    @last_name = last_name
    @first_name = first_name
    @gender = gender
    @favorite_color = favorite_color
    @birth_date = birth_date
    @@all << self
  end
end

class PipeContacts < Contacts
  attr_accessor :last_name, :first_name, :middle_initial, :gender, :favorite_color, :birth_date
  def initialize(last_name, first_name, middle_initial, gender, favorite_color, birth_date)
    @last_name = last_name
    @first_name = first_name
    @middle_initial = middle_initial
    gender == "M" ? @gender = "Male" : @gender = "Female"
    @favorite_color = favorite_color
    @birth_date = birth_date.gsub(/[-]/, '/')
    @@all << self
  end
end

class SpaceContacts < Contacts
  attr_accessor :last_name, :first_name, :middle_initial, :gender, :birth_date, :favorite_color
  def initialize(last_name, first_name, middle_initial, gender, birth_date, favorite_color)
    @last_name = last_name
    @first_name = first_name
    gender == "M" ? @gender = "Male" : @gender = "Female"
    @birth_date = birth_date.gsub(/[-]/, '/')
    @favorite_color = favorite_color
    @@all << self
  end
end