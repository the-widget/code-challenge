require_relative "../../lib/cyrus-code-challenge"

describe '.comma contacts' do
  contact = CommaContacts.new("Abercrombie", "Neil", "Male", "Tan", "2/13/1943")

  it 'creates a contact' do 
    expect(contact.first_name).to eq("Neil")
    expect(contact.last_name).to eq("Abercrombie")
    expect(contact.gender).to eq("Male")
    expect(contact.favorite_color).to eq("Tan")
    expect(contact.birth_date.strftime("%-m/%d/%Y")).to eq("2/13/1943")
  end

  it 'adds itself to Contacts' do
    expect(Contacts.all.length).to eq(1)
  end


end