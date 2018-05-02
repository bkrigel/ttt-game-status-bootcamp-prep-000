# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.detect do |winc|
    board[winc[0]] == board[winc[1]] &&
    board[winc[1]] == board[winc[2]] &&
    (board[winc[0]] == "X" || board[winc[0]] == "O")
  end
end

def full?(board)
  if WIN_COMBINATIONS.detect do |fullb|
    (board[fullb[0]] == "X" || board[fullb[0]] == "O") &&
    (board[fullb[1]] == "X" || board[fullb[1]] == "O") &&
    (board[fullb[2]] == "X" || board[fullb[2]] == "O")
end
  else
    false
  end
end
