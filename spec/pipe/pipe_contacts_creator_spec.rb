require_relative "../../lib/cyrus-code-challenge"

describe '.pipe-contacts-creator' do
  PipeContactsCreator.new.create

  it 'creates contacts' do
    expect(Contacts.all.length).to eq(3)
    expect(Contacts.all[0].first_name).to eq("Steve")
  end

  it 'formats birth_date to Date class' do
    expect(Contacts.all[0].birth_date).to be_an_instance_of(Date)
  end
end