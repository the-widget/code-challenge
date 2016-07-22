require_relative "../../lib/cyrus-code-challenge"

describe '.pipe contacts' do
  contact = PipeContacts.new("Smith", "Steve", "D", "M", "Red", "3-3-1985")

  it 'creates a contact' do 
    expect(contact.first_name).to eq("Steve")
    expect(contact.last_name).to eq("Smith")
    expect(contact.middle_initial).to eq("D")
    expect(contact.gender).to eq("Male")
    expect(contact.favorite_color).to eq("Red")
    expect(contact.birth_date.strftime("%-m/%-d/%Y")).to eq("3/3/1985")
  end

  it 'adds itself to Contacts' do
    expect(Contacts.all.length).to eq(1)
  end


end