# require_relative "../lib/cyrus-code-challenge"


# describe '.contacts' do

#   RSpec.configure do |config|
#     config.after(:all) do
#     end
#   end
  
#   contact2 = Contacts.new("Smith", "Steve", "Male", "Red", "3/3/1985")
#   contact3 = Contacts.new("Kournikova", "Anna", "Female", "Red", "6/3/1975")

#   it 'creates a contact' do 
#     expect(contact2.first_name).to eq("Steve")
#     expect(contact2.last_name).to eq("Smith")
#     expect(contact2.gender).to eq("Male")
#     expect(contact2.favorite_color).to eq("Red")
#     expect(contact2.birth_date.strftime("%-m/%-d/%Y")).to eq("3/3/1985")
#   end

#   it 'creates a contact' do 
#     expect(contact3.first_name).to eq("Anna")
#     expect(contact3.last_name).to eq("Kournikova")
#     expect(contact3.gender).to eq("Female")
#     expect(contact3.birth_date.strftime("%-m/%-d/%Y")).to eq("6/3/1975")
#     expect(contact3.favorite_color).to eq("Red")
#   end

#   it 'adds itself to Contacts' do
#     expect(Contacts.all.length).to eq(3)
#   end


# end