require_relative("./../sum_finder.rb")

describe SumFinder do
  describe "findTwoSum" do
    it "returns 821184 when sum is 1456 and 564" do
      sumFinder = SumFinder.new(["1456", "564"])
      expect(sumFinder.findTwoSum(2020)).to eql(821184)
    end
    
    it "returns correct product when given list of numbers" do
      sumFinder = SumFinder.new(["1010", "1721", "979", "366", "299", "675", "1456"])
      expect(sumFinder.findTwoSum(2020)).to eql(514579)
    end
  end

  describe "findThreeSum" do
    it "returns correct answer when given list of numbers" do
      sumFinder = SumFinder.new(["1721", "979", "366", "299", "675", "1456"])
      expect(sumFinder.findThreeSum(2020)).to eql(241861950)
    end
  end
end
