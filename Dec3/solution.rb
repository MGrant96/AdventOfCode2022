#!/usr/bin/env ruby

overall_sum = 0
value = 0

File.readlines('dec3input.txt').each do |line|
  half_way = (line.length / 2) - 1

  one = line[0..half_way]
  two = line[half_way + 1..line.length]
    one.split('').each do |l| # can also use this:next unless two.include?(l)
        if two.include?(l)
            if l == l.downcase
                value = l.ord - 96
            else
                value = l.ord - 38
            end
          overall_sum += value
    
          break
        end
    end
end
puts "Part 1: \mThe overall score is :\n#{overall_sum}\n"


