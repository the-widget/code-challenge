require_relative "../lib/cyrus-code-challenge"

describe 'input_files' do
  it 'inputs correctly formated data' do
    file = File.open("lib/input_files/comma.txt")
    contents = file.read
    expect(contents).to_not include(" | ")
    expect(contents).to include(", ")
  end
end

describe '.comma parser' do
  test_data = CommaParser.new("lib/input_files/comma.txt").parse
  
  it 'parses into correct number of contacts' do
    expect(test_data.size).to eq(3)
  end

  it 'parses the data correctly' do 
    expect(test_data[0])
    .to eq(["Abercrombie", "Neil", "Male", "Tan", "2/13/1943"])
  end
end
