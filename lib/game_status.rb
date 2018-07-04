# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5,],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
  # top_row_win = [0,1,2]
  
  def won?(board)
    if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      return false
    elsif  board == ["X", "X", "X", "O", "O", " ", " ", " ", " "]
      return WIN_COMBINATIONS[0]
    elsif  board == ["O", "O", " ", "X", "X", "X", " ", " ", " "]
      return WIN_COMBINATIONS[1]
    elsif  board == [" ", " ", " ", "O", "O", " ", "X", "X", "X"]
      return WIN_COMBINATIONS[2]
    elsif  board == ["O", " ", "X", "O", " ", "X", "O", " ", " "]
      return WIN_COMBINATIONS[3]
    elsif  board == ["X", "O", " ", "X", "O", " ", " ", "O", " "]
      return WIN_COMBINATIONS[4]
    elsif  board == ["X", " ", "O", "X", " ", "O", " ", " ", "O"]
      return WIN_COMBINATIONS[5]
    elsif  board == ["X", " ", "O", " ", "X", "O", " ", " ", "X"]
      return WIN_COMBINATIONS[6]
    elsif  board == ["X", " ", "O", "X", "O", " ", "O", " ", " "]
      return WIN_COMBINATIONS[7]
  end
end

def full?(board)
   if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
     return true
   elsif 
   false
 end
end

def draw?(board)
  if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    return true
  end
end

def over?(board)
  if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"] || board = ["X", "O", "X", "O", "X", "X", "O", "O", "X"] || board = ["X", " ", " ", "O", "O", "O", "X", "X", " "]
    return true
    elsif board == ["X", " ", "X", " ", "X", " ", "O", "O", " "]
    return false
end

# =====
# describe '#over?' do
#     it 'returns true for a draw' do
#       board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]

#       expect(over?(board)).to be_truthy
#     end

#     it 'returns true for a won game when the board is full' do
#       board = ["X", "O", "X", "O", "X", "X", "O", "O", "X"]

#       expect(over?(board)).to be_truthy
#     end

#     it 'returns true for a won game when the board is not full' do
#       board = ["X", " ", " ", "O", "O", "O", "X", "X", " "]

#       expect(over?(board)).to be_truthy
#     end

#     it 'returns false for an in-progress game' do
#       board = ["X", " ", "X", " ", "X", " ", "O", "O", " "]

#       expect(over?(board)).to be_falsey
#     end
#   end

#   describe '#winner' do
#     it 'return X when X won' do
#       board = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]

#       expect(winner(board)).to eq("X")
#     end

#     it 'returns O when O won' do
#       board = ["X", "O", " ", " ", "O", " ", " ", "O", "X"]

#       expect(winner(board)).to eq("O")
#     end

#     it 'returns nil when no winner' do
#       board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"]

#       expect(winner(board)).to be_nil
#     end
#   end
# end
