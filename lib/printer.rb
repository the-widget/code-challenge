require_relative "./cyrus-code-challenge"

class Printer
  def intialize
  end

  def print_all
    output_1; output_2; output_3
  end

  def output_1
    puts "", "Output 1:"
    sorted = Contacts.all.sort_by{|contact| [contact.gender, contact.last_name]}
    sorted.each do |contact|
      puts "#{contact.last_name} #{contact.first_name} #{contact.gender} #{contact.birth_date.strftime("%-m/%-d/%Y")} #{contact.favorite_color}"
    end; puts""
  end

  def output_2
    puts "Output 2:"
    sorted = Contacts.all.sort_by{|contact| [contact.birth_date, contact.last_name]}
    sorted.each do |contact|
      puts "#{contact.last_name} #{contact.first_name} #{contact.gender} #{contact.birth_date.strftime("%-m/%-d/%Y")} #{contact.favorite_color}"
    end; puts""
  end

  def output_3
    puts "Output 3:"
    sorted = Contacts.all.sort{|a,b| b.last_name <=> a.last_name}
    sorted.each do |contact|
      puts "#{contact.last_name} #{contact.first_name} #{contact.gender} #{contact.birth_date.strftime("%-m/%-d/%Y")} #{contact.favorite_color}"
    end; puts""
  end
end
