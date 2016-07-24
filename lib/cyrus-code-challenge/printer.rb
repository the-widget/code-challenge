class Printer
  include Sorter

  def intialize
  end

  def print_all
    output_1; output_2; output_3
  end

  def output_1
    puts "", "Output 1:"
    contacts = sorted_by_ascending_gender_and_last_name
    contacts.each do |contact|
      puts "#{contact.last_name} #{contact.first_name} #{contact.gender} #{contact.birth_date.strftime("%-m/%-d/%Y")} #{contact.favorite_color}"
    end; puts""
  end

  def output_2
    puts "Output 2:"
    contacts = sorted_by_ascending_birthdate_and_last_name
    contacts.each do |contact|
      puts "#{contact.last_name} #{contact.first_name} #{contact.gender} #{contact.birth_date.strftime("%-m/%-d/%Y")} #{contact.favorite_color}"
    end; puts""
  end

  def output_3
    puts "Output 3:"
    contacts = sorted_by_last_name_descending
    contacts.each do |contact|
      puts "#{contact.last_name} #{contact.first_name} #{contact.gender} #{contact.birth_date.strftime("%-m/%-d/%Y")} #{contact.favorite_color}"
    end; puts""
  end
end
