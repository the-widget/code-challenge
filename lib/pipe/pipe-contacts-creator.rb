class PipeContactsCreator
  def create
    contacts_info = Parser.new("lib/input_files/pipe.txt").parse
    contacts_info.each do |contact|
      PipeContacts.new(contact[0], contact[1], contact[2], contact[3], contact[4], contact[5])
    end
  end
end
