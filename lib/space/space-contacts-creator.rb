class SpaceContactsCreator
  def create
    contacts_info = SpaceParser.new("lib/input_files/space.txt").parse
    contacts_info.each do |contact|
      SpaceContacts.new(contact[0], contact[1], contact[2], contact[3], contact[4], contact[5])
    end
  end
end