require_relative "../../lib/cyrus-code-challenge"

describe 'input_files' do
  it 'inputs correctly formated data' do
    file = File.open("lib/input_files/space.txt")
    contents = file.read
    expect(contents).to_not include(", ")
    expect(contents).to_not include(" | ")
  end
end

describe '.space parser' do
  test_data = SpaceParser.new("lib/input_files/space.txt").parse
  
  it 'parses into correct number of contacts' do
    expect(test_data.size).to eq(3)
  end

  it 'parses the data correctly' do 
    expect(test_data[0])
    .to eq(["Kournikova", "Anna", "F", "F", "6-3-1975", "Red"])
  end
end

