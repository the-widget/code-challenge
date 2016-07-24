## THIS SPEC PASSES ONLY WHEN RUN BY ITSELF, NOT IN SUITE ##

# require_relative "../lib/cyrus-code-challenge"
# describe '.contacts' do
  
#   contact1 = Contacts.new("Smith", "Steve", "Male", "Red", "3/3/1985")
#   contact2 = Contacts.new("Kournikova", "Anna", "Female", "Red", "6/3/1975")

#   it 'creates a contact' do 
#     expect(contact1.first_name).to eq("Steve")
#     expect(contact1.last_name).to eq("Smith")
#     expect(contact1.gender).to eq("Male")
#     expect(contact1.favorite_color).to eq("Red")
#     expect(contact1.birth_date.strftime("%-m/%-d/%Y")).to eq("3/3/1985")
#   end

#   it 'creates a contact' do 
#     expect(contact2.first_name).to eq("Anna")
#     expect(contact2.last_name).to eq("Kournikova")
#     expect(contact2.gender).to eq("Female")
#     expect(contact2.birth_date.strftime("%-m/%-d/%Y")).to eq("6/3/1975")
#     expect(contact2.favorite_color).to eq("Red")
#   end

#   it 'adds itself to Contacts' do
#     expect(Contacts.all.length).to eq(2)
#   end
# end