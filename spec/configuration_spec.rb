RSpec.configure do |config|
  config.before(:suite) do
    ContactsCreator.call
  end
end
