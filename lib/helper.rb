class Helper
  WINNING_CASES =[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [6, 4, 2],
    [0, 4, 8]
  ]

  def position_taken?(board, index)
    !(board[index] == (board[index] == '') || (board[index] == ' ') || board[index].nil?)
  end

  def valid_move?(board, index)
    index.between?(0, 8) && !position_taken?(board, index)
  end

  def won?(board)
    WINNING_CASES.find do |item|
      board[item[0]] == board[item[1]] &&
        board[item[1]] == board[item[2]] &&
        board[item[0]] != ' '
    end
  end

  def draw?(player_move)
    player_move == 9
  end

  def game_over?(board, turn_count)
    won?(board) || draw?(turn_count)
  end
end
