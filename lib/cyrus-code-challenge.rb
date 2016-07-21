module CyrusCodeChallenge
  VERSION = "0.0.0"
end

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