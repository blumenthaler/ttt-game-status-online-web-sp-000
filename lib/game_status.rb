# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

WIN_COMBINATIONS = [
  [0,1,2], # Top row 
  [3,4,5], # Middle row 
  [6,7,8], # Bottom row 
  [0,3,6], # left column 
  [1,4,7], # middle column 
  [2,5,8], # right column 
  [0,4,8], # diag topleft 
  [2,4,6]  # diag botleft
 ]
  
# return winning combination indexes as an array if there is a win 


 # WIN_COMBINATIONS.each {|win_combo| win_combo == "X" || win_combo == "O"}
    #if any of the win combos are filled on the board then return that miniarray
    #check if board contains win_combo  

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
      if (board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X") || (board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O")
       return win_combo 
      end
  end
  false
end

#  top_row_win = WIN_COMBINATIONS[0]
#  middle_row_win = WIN_COMBINATIONS[1]
#  bottom_row_win = WIN_COMBINATIONS[2]
#  left_column_win = WIN_COMBINATIONS[3]
#  middle_column_win = WIN_COMBINATIONS[4]
#  right_column_win = WIN_COMBINATIONS[5]
#  diagonal_win_1 = WIN_COMBINATIONS[6]
#  diagonal_win_2 = WIN_COMBINATIONS[7]
  
#  win_index_1 = top_row_win[0]
#  win_index_2 = top_row_win[1]
#  win_index_3 = top_row_win[2]
#  win_index_4 = middle_row_win[0]
#  win_index_5 = middle_row_win[1]
#  win_index_6 = middle_row_win[2]
#  win_index_7 = bottom_row_win[0]
#  win_index_8 = bottom_row_win[1]
#  win_index_9 = bottom_row_win[2]

 
#  position_1 = board[win_index_1] 
#  position_2 = board[win_index_2]
#  position_3 = board[win_index_3] 
#  position_4 = board[win_index_4]
#  position_5 = board[win_index_5]
#  position_6 = board[win_index_6]
#  position_7 = board[win_index_7]
#  position_8 = board[win_index_8]
#  position_9 = board[win_index_9]


 #   if position_1 == "X" && position_2 == "X" && position_3 == "X"
#      top_row_win
#    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
#      top_row_win
#    elsif position_4 == "X" && position_5 == "X" && position_6 == "X"
#      middle_row_win
#    elsif position_4 == "O" && position_5 == "O" && position_6 == "O"
#      middle_row_win
#     elsif position_7 == "X" && position_8 == "X" && position_9 == "X"
#      bottom_row_win
#    elsif position_7 == "O" && position_8 == "O" && position_9 == "O"
#      bottom_row_win
#    elsif position_1 == "X" && position_4 == "X" && position_7 == "X"
#      left_column_win
#    elsif position_1 == "O" && position_4 == "O" && position_7 == "O"
#      left_column_win
#    elsif position_2 == "X" && position_5 == "X" && position_8 == "X"
#      middle_column_win
#    elsif position_2 == "O" && position_5 == "O" && position_8 == "O"
#      middle_column_win
#    elsif position_3 == "X" && position_6 == "X" && position_9 == "X"
#      right_column_win
#    elsif position_3 == "O" && position_6 == "O" && position_9 == "O"
#      right_column_win
#    elsif position_1 == "X" && position_5 == "X" && position_9 == "X"
#      diagonal_win_1
#    elsif position_1 == "O" && position_5 == "O" && position_9 == "O"
#      diagonal_win_1
#    elsif position_3 == "X" && position_5 == "X" && position_7 == "X"
#      diagonal_win_2
#    elsif position_3 == "O" && position_5 == "O" && position_7 == "O"
#      diagonal_win_2
#    else
#      return false
#    end
#  end

def full?(board)
  !board.any?{|x| x == " "}
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  else
    false
  end
end

# true if game has been won(regardless if board is full or not), is a draw, or is full

def over?(board)
  if won?(board) || draw?()
    true
  elsif draw?(board)
    true
  else
    false
  end
end 



