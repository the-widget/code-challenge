RSpec.configure do |config|
  config.before(:suite) do
    ContactsCreator.new.create
  end
end