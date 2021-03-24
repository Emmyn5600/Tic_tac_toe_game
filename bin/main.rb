#!/usr/bin/env ruby
# puts 'Hello World!'

class TicTacToe
    attr_accessor :broad

    def initialize(board)
        @board = ['', '', '', '', '', '', '', '', '']
    end

    WIN_COMBINATIONS = [ 
        [0,1,2], # top_row 
        [3,4,5], # middle_row 
        [6,7,8], # bottom_row 
        [0,3,6], # left_column 
        [1,4,7], # center_column 
        [2,5,8], # right_column 
        [0,4,8], # left_diagonal 
        [6,4,2] # right_diagonal 
        ]
    
puts "\nWelcome to the Ruby's Tic Tac Toe game"

puts "\nEnter your player 1 name"
player1 = gets.chomp.capitalize

puts "\nEnter your player 2 name"
player2 = gets.chomp.capitalize

puts "\n#{player1} will play with x and #{player2} will play with o"

puts "\nLet's start the game"
puts "\nChoose the letters between 1 and 9 to place your mark on the board"
 
def display_board(board)
  puts "\n #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#display_board(board)

puts "\n#{player1} Enter a number between 1 and 9"
user_input1 = gets.chomp

case user_input1.to_i
when 1 then puts 'You are the winner!'
when 2 then puts 'It is a tie!'
end

display_board(board)
puts "\n#{player2} Enter a number between 1 and 9"
user_input2 = gets.chomp

case user_input2.to_i
when 1 then puts 'You are the winner!'
when 2 then puts 'It is a tie!'
end
end