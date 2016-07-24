require_relative "../lib/cyrus-code-challenge"

describe '.parser' do
  space_test_data = Parser.new("data/space.txt").parse
  
  it 'parses space.txt file into correct number of contacts' do
    expect(space_test_data.size).to eq(3)
  end

  it 'parses the data correctly' do 
    expect(space_test_data[0])
    .to eq(["Kournikova", "Anna", "Female", "Red", "6/3/1975"])
  end
end

describe '.parser' do
  pipe_test_data = Parser.new("data/pipe.txt").parse

  it 'parses pipe.txt file into correct number of contacts' do
    expect(pipe_test_data.size).to eq(3)
  end

  it 'parses the data correctly' do 
    expect(pipe_test_data[0])
    .to eq(["Smith", "Steve", "Male", "Red", "3/3/1985"])
  end
end

describe '.parser' do
  comma_test_data = Parser.new("data/comma.txt").parse
  
  it 'parses into correct number of contacts' do
    expect(comma_test_data.size).to eq(3)
  end

  it 'parses the data correctly' do 
    expect(comma_test_data[0])
    .to eq(["Abercrombie", "Neil", "Male", "Tan", "2/13/1943"])
  end
end
