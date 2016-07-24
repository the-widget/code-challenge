require_relative "../lib/cyrus-code-challenge"
require 'stringio'

describe '.printer' do

  before do
    $stdout = StringIO.new
  end

  after(:all) do
    $stdout = STDOUT
  end
  
  ContactsCreator.new.create
  printer = Printer.new

  it 'prints output_1 correctly' do
    printer.output_1
      expect($stdout.string).to match("\nOutput 1:\nHingis Martina Female 4/2/1979 Green\nKelly Sue Female 7/12/1959 Pink\nKournikova Anna Female 6/3/1975 Red\nSeles Monica Female 12/2/1973 Black\nAbercrombie Neil Male 2/13/1943 Tan\nBishop Timothy Male 4/23/1967 Yellow\nBonk Radek Male 6/3/1975 Green\nBouillon Francis Male 6/3/1975 Blue\nSmith Steve Male 3/3/1985 Red\n\n")
  end

  it 'prints output_2 correctly' do
    printer.output_2
      expect($stdout.string).to match("Output 2:\nAbercrombie Neil Male 2/13/1943 Tan\nKelly Sue Female 7/12/1959 Pink\nBishop Timothy Male 4/23/1967 Yellow\nSeles Monica Female 12/2/1973 Black\nBonk Radek Male 6/3/1975 Green\nBouillon Francis Male 6/3/1975 Blue\nKournikova Anna Female 6/3/1975 Red\nHingis Martina Female 4/2/1979 Green\nSmith Steve Male 3/3/1985 Red\n\n")
  end

  it 'prints output_3 correctly' do
      printer.output_3
        expect($stdout.string).to match("Output 3:\nSmith Steve Male 3/3/1985 Red\nSeles Monica Female 12/2/1973 Black\nKournikova Anna Female 6/3/1975 Red\nKelly Sue Female 7/12/1959 Pink\nHingis Martina Female 4/2/1979 Green\nBouillon Francis Male 6/3/1975 Blue\nBonk Radek Male 6/3/1975 Green\nBishop Timothy Male 4/23/1967 Yellow\nAbercrombie Neil Male 2/13/1943 Tan\n\n")
  end

  it 'prints entire output correctly' do
      printer.print_all
        expect($stdout.string).to match("\nOutput 1:\nHingis Martina Female 4/2/1979 Green\nKelly Sue Female 7/12/1959 Pink\nKournikova Anna Female 6/3/1975 Red\nSeles Monica Female 12/2/1973 Black\nAbercrombie Neil Male 2/13/1943 Tan\nBishop Timothy Male 4/23/1967 Yellow\nBonk Radek Male 6/3/1975 Green\nBouillon Francis Male 6/3/1975 Blue\nSmith Steve Male 3/3/1985 Red\n\nOutput 2:\nAbercrombie Neil Male 2/13/1943 Tan\nKelly Sue Female 7/12/1959 Pink\nBishop Timothy Male 4/23/1967 Yellow\nSeles Monica Female 12/2/1973 Black\nBonk Radek Male 6/3/1975 Green\nBouillon Francis Male 6/3/1975 Blue\nKournikova Anna Female 6/3/1975 Red\nHingis Martina Female 4/2/1979 Green\nSmith Steve Male 3/3/1985 Red\n\nOutput 3:\nSmith Steve Male 3/3/1985 Red\nSeles Monica Female 12/2/1973 Black\nKournikova Anna Female 6/3/1975 Red\nKelly Sue Female 7/12/1959 Pink\nHingis Martina Female 4/2/1979 Green\nBouillon Francis Male 6/3/1975 Blue\nBonk Radek Male 6/3/1975 Green\nBishop Timothy Male 4/23/1967 Yellow\nAbercrombie Neil Male 2/13/1943 Tan\n\n")
  end

end

