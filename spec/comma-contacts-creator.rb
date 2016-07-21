require_relative "../lib/version"

describe '.comma comma-contacts-creator' do
  CommaContactsCreator.new.create

  it 'creates contacts' do
    expect(Contacts.all.length).to eq(3)
  end

  it 'formats birth_date to Date class' do
    expect(Contacts.all[0].birth_date).to be_an_instance_of(Date)
  end

end