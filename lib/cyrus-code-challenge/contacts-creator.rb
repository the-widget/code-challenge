class ContactsCreator
  
  def self.call
    input_files = File.expand_path("../../data/", File.dirname(__FILE__))
    Dir.glob("#{input_files}/*.txt") do |txt_file|
      contacts_info = Parser.new(txt_file).parse
      contacts_info.each do |contact|
        Contacts.new(contact[0], contact[1], contact[2], contact[3], contact[4])
      end
    end
  end
end