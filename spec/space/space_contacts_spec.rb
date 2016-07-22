require_relative "../../lib/cyrus-code-challenge"

describe '.space contacts' do
  contact = SpaceContacts.new("Kournikova", "Anna", "F", "F", "6-3-1975", "Red")

  it 'creates a contact' do 
    expect(contact.first_name).to eq("Anna")
    expect(contact.last_name).to eq("Kournikova")
    expect(contact.middle_initial).to eq("F")
    expect(contact.gender).to eq("Female")
    expect(contact.birth_date.strftime("%-m/%-d/%Y")).to eq("6/3/1975")
    expect(contact.favorite_color).to eq("Red")
  end

  it 'adds itself to Contacts' do
    expect(Contacts.all.length).to eq(1)
  end


end