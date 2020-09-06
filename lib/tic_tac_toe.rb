WIN_COMBINATIONS = [
  
  [0,1,2], #Top row0
  [3,4,5], #middle row1
  [6,7,8], #bottom row2
  [0,3,6], #first column3
  [1,4,7], #sec column4
  [2,5,8], #third column5
  [0,4,8], #left diagonal6
  [2,4,6]  #right diagonal7
  
  ]
  
  def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, player)
  board[index] = player
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def valid_move?(board, index)
   index.between?(0,8) && !position_taken?(board, index)
  end
  
  def turn(board)
    puts "Please pick from 1-9:"
    user_input = gets.strip 
    index = input_to_index(user_input)
    if valid_move?(board, index) 
      move(board, index, player)
      display_board(board)
    else
      turn(board)
    end
  end
  
  def turn_count(board)
    board.count do |token|
      token == "X" || token == "O"
      end 
  end
  
  def current_player(board)
    if turn_count(board) % 2 == 0 
      current_player = "X"
    else
      current_player = "O"
    end
  end
  
  
  
  
