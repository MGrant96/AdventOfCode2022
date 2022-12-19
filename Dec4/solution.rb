#!/usr/bin/env ruby

# Needed to see someones solution for this one
input = File.readlines('dec4input.txt', chomp: true).map do |line|
    elf1, elf2 = line.split(',')
    # This invokes .map on array, and for each element in the array, returns the result of calling to_i on that element.
    elf1_start, elf1_end = elf1.split('-').map(&:to_i)
    elf2_start, elf2_end = elf2.split('-').map(&:to_i)
    [Range.new(elf1_start, elf1_end), Range.new(elf2_start, elf2_end)]
end

task1 = input.count do |elf1_range, elf2_range|
    # Returns true if obj is between the begin and end of the range.
    elf1_range.cover?(elf2_range) || elf2_range.cover?(elf1_range)
end

p task1

task2 = input.count do |elf1_range, elf2_range|
    elf1_range.last >= elf2_range.first && elf2_range.last >= elf1_range.first
end

p task2
