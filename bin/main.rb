#!/usr/bin/env ruby
puts "Welcome to Ruby's Tic-Tac-Toe!"
puts "\nEnter Player 1 name:"
player1 = gets.chomp.capitalize
puts "\nEnter Player 2 name:"
player2 = gets.chomp.capitalize
puts "\n#{player1} will play with X and #{player2} will play with O"
puts "\nLets Start!"
puts '[press ENTER to start]'
gets

p_turn = player1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
i = 0

(0..arr.length - 1).each do |_i|
  puts "| #{arr[0]} | #{arr[1]} | #{arr[2]} |"
  puts '+---+---+---+'
  puts "| #{arr[3]} | #{arr[4]} | #{arr[5]} |"
  puts '+---+---+---+'
  puts "| #{arr[6]} | #{arr[7]} | #{arr[8]} |"
  puts "\n"
  puts "It's #{p_turn}'s turn!"
  puts "\nPlease select an available spot from the board:"
  arr_el = gets.chomp

  while (arr_el =~ /\D/) || arr_el.empty? || arr[arr_el.to_i - 1] =~ /\D/
    puts "\nInvalid move. please enter a number from 1-9"
    arr_el = gets.chomp
  end

  if p_turn == player1
    arr[arr_el.to_i - 1] = 'X'
    p_turn = player2
  else
    arr[arr_el.to_i - 1] = 'O'
    p_turn = player1
  end

  if i == 3
    puts "\nIt's a DRAW!"
    puts "\n#{player1}, #{player2}, that was a great game!"
    gets
  end
  i += 1
end

result = player1

puts "| #{arr[0]} | #{arr[1]} | #{arr[2]} |"
puts '+---+---+---+'
puts "| #{arr[3]} | #{arr[4]} | #{arr[5]} |"
puts '+---+---+---+'
puts "| #{arr[6]} | #{arr[7]} | #{arr[8]} |"

if result == player1 || result == player2
  puts "\nCONGRATULATIONS!"
  puts "\n#{result} you WIN the game!"

else
  puts "\nIt's a DRAW!"
  puts "\n#{player1}, #{player2}, that was a great game!"

end
