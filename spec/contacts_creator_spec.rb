require_relative "../lib/cyrus-code-challenge"

describe '.contacts-creator' do
  ContactsCreator.new.create

  it 'creates all contacts' do
    expect(Contacts.all.length).to eq(9)
    expect(Contacts.all[0].first_name).to eq("Neil")
    expect(Contacts.all.last.birth_date.strftime("%-m/%-d/%Y")).to eq("12/2/1973")
  end

  it 'formats birth_date to Date class' do
    expect(Contacts.all[0].birth_date).to be_an_instance_of(Date)
  end
end