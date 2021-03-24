#!/usr/bin/env ruby

require_relative '../lib/player'
require_relative '../lib/helper'

class TicTacToe
  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @name = []
    @helper = Helper.new
    @game_over = false
    @counter = 0
  end

  def begin
    puts 'Welcome to TIC-TAC-TOE'
    puts ''
  end

  def show_board
    puts "  #{@board[0]}, #{@board[1]}, #{@board[2]}"
    puts separator = '-----------'
    puts "  #{@board[3]}, #{@board[4]}, #{@board[5]}"
    puts separator
    puts "  #{@board[6]}, #{@board[7]}, #{@board[8]}"
    puts ''
  end

  def player_move(user_input)
    user_input.to_i - 1
  end

  def move_board(index)
    @board[index] = @player.token
  end

  def turn_count
    a = @board.include?('X')

    case @counter

    when a
      @counter += 1
    else
      @counter
    end
    @counter
  end

  def turn
    @player = @player == @name[0] ? @name[1] : @name[0]
    puts "#{@player.name}, choose a spot between 1-9"
    player_play = gets.strip.to_i
    until player_play.positive?
      puts 'Please enter a valid move'
      player_play = gets.strip.to_i
    end
    until @helper.valid_move?(@board, player_move(player_play))
      puts "#{@player.name}, Invalid number. Choose another number between 1-9"
      player_play = gets.strip.to_i
    end
    move_board(player_move(player_play))
    show_board
    if @helper.won?(@board)
      puts "Congratulations #{@player.name} you won!!!"
      @game_over = true
    elsif @helper.draw?(turn_count)
      puts 'It is a Draw!!!'
      @game_over = true
    end
  end

  def names_of_users
    tokens = %w[X O]

    2.times do |item|
      puts 'Please enter names of players: '
      player_name = gets.chomp.strip.capitalize
      puts ''

      while player_name.empty?
        puts 'Please enter a valid name'
        player_name = gets.strip.to_s
        break unless player_name.empty?
      end
      @name << Player.new(player_name, tokens[item])
    end

    until @name[1].name != @name[0].name
      puts "Your name should be different than #{@name[0].name}:"
      player2 = gets.strip.to_s
      @name[1] = Player.new(player2, 'O')
    end
    sleep 1
  end

  def player_names
    puts "Today our players are: #{@name[0].name} and #{@name[1].name}"
    puts ''
    sleep 1
    puts "#{@name[0].name} is going to play with 'X' symbol."
    sleep 1
    puts ''
    puts "#{@name[1].name} is going to play with 'O'symbol"
    sleep 1
  end

  def execute
    system('clear')
    names_of_users
    player_names
    puts ''
    turn until @game_over
  end

  play_game = TicTacToe.new
  play_game.execute; end
