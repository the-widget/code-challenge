class ContactsCreator
  def create
    Dir.glob("lib/input_files/*.txt") do |txt_file|
      contacts_info = Parser.new(txt_file).parse
      contacts_info.each do |contact|
        Contacts.new(contact[0], contact[1], contact[2], contact[3], contact[4])
      end
    end
  end

end