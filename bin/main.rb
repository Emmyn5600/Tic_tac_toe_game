#!/usr/bin/env ruby
#puts 'Hello World!'

puts "\nWelcome to the Ruby's Tic Tac Toe game"

puts "\nEnter your player 1 name"
player_1 = gets.chomp.capitalize

puts "\nEnter your player 2 name"
player_2 = gets.chomp.capitalize


puts "\n#{player_1} will play with x and #{player_2} will play with o"

puts "\nLet's start the game"
puts "\nChoose the letters between 1 and 9 to place your mark on the board"

board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def display_board(board)
  puts "\n #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
display_board(board)

puts "\n#{player_1} Enter a number between 1 and 9"
user_input_1 = gets.chomp.to_i

if user_input_1 = board[index]
  board[element] = 99
else 
  puts "\nEnter a valid number!"
end

puts board
