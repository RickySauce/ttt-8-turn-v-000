require 'pry'

board = [" "," "," "," "," "," "," "," "," ",]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2] } "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board,index,player = "X")
  board[index] = player
end

def position_taken?(board,index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board,index)
  if index.between?(0,8) == true && position_taken?(board,index) == false
    true
  else
    false
  end
end

def ask
  puts "Please enter 1-9:"
end

def user_input
  gets.strip
end

def turn(board)
  ask
  index = input_to_index(user_input)
    until valid_move?(board,index)
      ask
      index = input_to_index(user_input)
    end
   move(board,index,player = "X")
   display_board(board)
  end
