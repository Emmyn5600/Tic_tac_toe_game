#!/usr/bin/env ruby
#puts 'Hello World!'

puts "Welcome to the Ruby's Tic Tac Toe game"

puts "Enter your player 1 name"
player_name1 = gets.chomp

puts "Enter your player 2 name"
player_name2 = gets.chomp


puts "#{player_name1} will play with x and #{player_name2} will play with o"

puts "Enter a number between 1 and 9"
number = gets.chomp.to_i

if number < 1 || number > 9 then
    puts "Invalid number"
else
    puts number
end
