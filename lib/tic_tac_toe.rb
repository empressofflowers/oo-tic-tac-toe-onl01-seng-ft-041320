require "pry"

class TicTacToe

  WIN_COMBINATIONS = [[0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]]

  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

  def self.input_to_index(current_player)
    @board[player input - 1]
  end

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end

  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def valid_move

  end

  def turn
    #1. Ask the user for their move by specifying a position between 1-9.
    #2. Receive the user's input.
    #3. Translate that input into an index value.
    #4. If the move is valid, make the move and display the board.
    #5. If the move is invalid, ask for a new move until a valid move is received.
  end

  def turn_count                
    
  end

  def won?
    #false or nil
    #array of winning combinations
  end



end
