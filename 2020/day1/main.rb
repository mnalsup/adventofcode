#!/usr/bin/ruby

require_relative('./sum_finder')

entries = IO.readlines("input.txt")
sumFinder = SumFinder.new(entries)
target = 2020
puts sumFinder.findThreeSum(2020)
