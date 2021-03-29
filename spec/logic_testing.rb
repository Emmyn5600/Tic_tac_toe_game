require_relative '../bin/main'
require_relative '../lib/helper'
require_relative '../lib/player'

describe Helper do
   describe '#position_taken?' do
    it 'checks if the board is not empty and the position taken'
     helper = Helper.new
     (board[index] == board[index].to be false)
      expect( !(board[index] == (board[index] == '') || (board[index] == ' ') || board[index].nil?))
   end 
end