#!/usr/bin/env ruby

current_cal = 0
highest_cal = 0
elves = []
File.readlines('dec1input.txt').each do |line|
    # When the File.readlines come to a newline,
    # this is the next elf coming so we need to assign the highest
    if line == "\n"
        if current_cal > highest_cal
            highest_cal = current_cal
        end
        # Adding each of the elves cal count to the array so we can sort later if needed
        elves.append(current_cal)
        # Reset the current
        current_cal = 0
    else
        # Adding each line as an integer to the current cal
        current_cal += line.to_i
    end
end


puts "The highest amount an elf has this total:\n#{highest_cal}"
