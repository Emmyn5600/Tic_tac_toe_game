#!/usr/bin/env ruby

require_relative '../lib/helper.rb'
require_relative '../lib/player.rb'

class TicTacToe

    def initialize
        @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
        @name = []
        @helper = Helpers.new
        @game_over = false
        @counter = 0
    end    

    def begin
        puts "Welcome to TIC-TAC-TOE"
        puts " "
        sleep 1
        puts "A simple game developed by Tiago and Emmy"
        puts " "
        sleep 1
    end

    def display_board(board)
        puts "\n #{board[0]} | #{board[1]} | #{board[2]} "
        puts '-----------'
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
        puts '-----------'
        puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end

    def player_move(user_input)
        user_input.to_i - 1
    end

    def move_on_board(index)
        @_board[index] = @player.token
    end

    def turn_count
        if @_board.include?('X')
            @counter += 1
        elsif @_board.include?('O')
            @counter += 1
        else
            @counter
        end
        @counter
    end  
end






=begin
puts display.display_name_prompt(1)
player1 = gets.chomp.capitalize
puts display.display_name_prompt(2)

puts "\n#{player1} will play with x and #{player2} will play with o"
puts "\nLet's start the game"
puts "\nChoose the letters between 1 and 9 to place your mark on the board"

board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
show_board = Board.new 
show_board.display_board(board)

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

=end