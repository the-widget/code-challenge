describe 'space.txt file' do
  it 'contains correctly formated data' do
    file = File.open("data/space.txt")
    contents = file.read
    expect(contents).to_not include(", ")
    expect(contents).to_not include(" | ")
  end
end

describe 'pipe.txt file' do
  it 'contains correctly formated data' do
    file = File.open("data/pipe.txt")
    contents = file.read
    expect(contents).to_not include(", ")
    expect(contents).to include(" | ")
  end
end

describe 'comma.txt file' do
  it 'contains correctly formated data' do
    file = File.open("data/comma.txt")
    contents = file.read
    expect(contents).to include(", ")
    expect(contents).to_not include(" | ")
  end
end