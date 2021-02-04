class SumFinder
  
  def initialize(entries)
    @entries = entries.map { |entry| entry.to_i }.sort!
  end

  def findTwoSum(target)
    @entries.each do |entry|
      remainder = target - entry
      puts "#{remainder}"
      if @entries.include?(remainder)
        puts "#{entry} #{remainder}"
        return entry * remainder
      end
    end
  end

  def findThreeSum(target)
    @entries.each_with_index do |entry, i|
      remainder = target - entry
      @entries[i+1, @entries.length].each do |nestedEntry|
        nestedRemainder = remainder - nestedEntry;
        puts "#{@entries[i+1, @entries.length]}"
        if @entries.include?(nestedRemainder)
          puts "#{entry} #{nestedEntry} #{nestedRemainder}"
          return entry * nestedEntry * nestedRemainder
        end
      end
    end
  end

end
