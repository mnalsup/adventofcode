require_relative("./../intcode_computer.rb")

describe IntcodeComputer do
  it "should halt at opcode 99" do
    intcodeComputer = IntcodeComputer.new([99])
    expect(intcodeComputer.run()).to eql([99])
  end

  it "should error when unknown opcode is encountered" do
    intcodeComputer = IntcodeComputer.new([40])
    expect{ intcodeComputer.run }.to raise_error("Invalid opcode")
  end

  it "should add two numbers together and store them" do
    intcodeComputer = IntcodeComputer.new([1,0,0,3,99])
    expect(intcodeComputer.run()).to eql([1,0,0,2,99])
  end

  it "should multiply two numbers together and store them" do
    intcodeComputer = IntcodeComputer.new([2,0,0,3,99])
    expect(intcodeComputer.run()).to eql([2,0,0,4,99])
  end

  it "should handle a sequence of operations" do
    intcodeComputer = IntcodeComputer.new([1,9,10,3,2,3,11,0,99,30,40,50])
    expect(intcodeComputer.run()).to eql([1,9,10,70,2,3,11,0,99,30,40,50])
  end

end
