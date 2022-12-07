#!/usr/bin/env ruby

total_score = 0
win = 6
draw = 3
loss = 0

File.readlines('dec2input.txt').each do |line|
    if line[0] == 'A' && line[2] == 'Y'
        score = win + 2
        total_score += score
    elsif line[0] == 'A' && line[2] == 'X'
        score = draw + 1
        total_score += score
    elsif line[0] == 'A' && line[2] == 'Z'
        score = loss + 3
        total_score += score
    elsif line[0] == 'B' && line[2] == 'Z'
        score = win + 3
        total_score += score
    elsif line[0] == 'B' && line[2] == 'Y'
        score = draw + 2
        total_score += score
    elsif line[0] == 'B' && line[2] == 'X'
        score = loss + 1
        total_score += score
    elsif line[0] == 'C' && line[2] == 'X'
        score = win + 1
        total_score += score
    elsif line[0] == 'C' && line[2] == 'Z'
        score = draw + 3
        total_score += score
    elsif line[0] == 'C' && line[2] == 'Y'
        score = loss + 2
        total_score += score
    end
end

puts "Part 1: \nMy total score is :\n#{total_score}\n"

total_score2 = 0

File.readlines('dec2input.txt').each do |line|
    if line[0] == 'A' && line[2] == 'Y'
        score = draw + 1
        total_score2 += score
    elsif line[0] == 'A' && line[2] == 'X'
        score = loss + 3
        total_score2 += score
    elsif line[0] == 'A' && line[2] == 'Z'
        score = win + 2
        total_score2 += score
    elsif line[0] == 'B' && line[2] == 'Z'
        score = win + 3
        total_score2 += score
    elsif line[0] == 'B' && line[2] == 'Y'
        score = draw + 2
        total_score2 += score
    elsif line[0] == 'B' && line[2] == 'X'
        score = loss + 1
        total_score2 += score
    elsif line[0] == 'C' && line[2] == 'X'
        score = loss + 2
        total_score2 += score
    elsif line[0] == 'C' && line[2] == 'Z'
        score = win + 1
        total_score2 += score
    elsif line[0] == 'C' && line[2] == 'Y'
        score = draw + 3
        total_score2 += score
    end
end

puts "Part 2: \nMy total score is :\n#{total_score2}"
