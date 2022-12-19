#!/usr/bin/env ruby

overall_sum1 = 0
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
          overall_sum1 += value
    
          break
        end
    end
end
puts "Part 1: \nThe overall score is :\n#{overall_sum1}\n"

overall_sum2 = 0

input = File.read('dec3input.txt').split("\n")
input.each_slice(3){ |one, two, three| 
  contain = ""
  one.split("").each{ |letter|
    if two.include?(letter) and three.include?(letter)
        if not contain.include?(letter)
            if letter.match /[[:upper:]]/
              overall_sum2 += letter.ord - 38
            else
              overall_sum2 += letter.ord - 96
            end
            contain += letter
        end   
    end
}
}
puts "Part 2: \nThe Second task score is :\n#{overall_sum2}\n"
