class CommaContactsCreator
  def create
    contacts_info = Parser.new("lib/input_files/comma.txt").parse
    contacts_info.each do |contact|
      Contacts.new(contact[0], contact[1], contact[2], contact[3], contact[4])
    end
  end
end