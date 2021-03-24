#!/usr/bin/env ruby
#puts 'Hello World!'

puts "Welcome to the Ruby's Tic Tac Toe game"

puts "Enter your player 1 name"
player_name1 = gets.chomp

puts "Enter your player 2 name"
player_name2 = gets.chomp


puts "#{player_name1} will play with x and #{player_name2} will play with o"

puts "Let's start the game"

puts "Enter a number between 1 and 9"
user_input = gets.chomp

def input_to_index(user_input)
    user_input.to_i - 1
 end

board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end
 display_board(board)


 def valid_move?(input)
    input.between?(0, 8) && !position_token?(input)
  end


  def turn
    puts "Choose a spot between 1-9"
    spot = gets.strip
    spot = input_to_index(spot)
    if valid_move?(spot)
      move(spot, current_player)
    else
      turn
    end
    display_board
  end
