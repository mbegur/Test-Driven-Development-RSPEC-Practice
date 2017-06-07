require "rspec"
require 'towers_of_hanoi'

describe Towers do
  subject(:towers) {Towers.new}

  describe '#initialize' do
    it "disc should initiliaze the first array with 3 discs and two empty arrays" do
      expect(towers.discs).to eq([[3, 2, 1], [], []])
    end
  end


   describe '#move' do
     before(:each) do
       towers.move(0,1)
     end

    it "should place disc from tower to another tower" do
      # expect(towers.discs[1]).to eq([])
      # towers.move(0, 1)
      expect(towers.discs[1]).to eq([1])
    end

    it "should raise error if from tower is empty" do
      expect{towers.move(2,1)}.to raise_error("you can't move towers is empty")
    end


    it "should raise an error when moving larger disc onto smaller discs" do
      expect{towers.move(0 ,1)}.to raise_error ( "Can't move larger disc onto smaller disc" )
    end
  end

  describe "#won?" do
    it "returns true when discs 0 is empty and discs 1 or 2 has  a length of three" do
      towers.discs = [[],[],[3,2,1]]
      expect(towers.won?).to eq(true)
     end

     it "returns false if if didcs 1 or 2 has not length of tree" do
       expect(towers.won?).to eq(false)
     end

  end





end
