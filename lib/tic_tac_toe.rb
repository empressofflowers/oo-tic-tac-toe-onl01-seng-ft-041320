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

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(player_input)
    player_input.to_i - 1
  end

  def move(position, token)
    @board[position] = token
  end

  def position_taken?(position)
    @board[position] != " "
  end

  def valid_move?(position)
    !position_taken?(posiiton) && position.between[0, 8]
  end

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end

  def turn
    puts "Enter a number 1-9"
    user_entry = gets
    index = input_to_index(user_entry)
    valid_move_response = valid_move?(index)

    if valid_move_response
      move(index, current_player)
      display_board
    else
      turn
    end
    #1. Ask the user for their move by specifying a position between 1-9.
    #2. Receive the user's input.
    #3. Translate that input into an index value.
    #4. If the move is valid, make the move and display the board.
    #5. If the move is invalid, ask for a new move until a valid move is received.
  end

  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end

  def won?
    WIN_COMBINATIONS.any? do |combo|
      if position_taken?(combo[0]) && @board[combo[0]] == @board[combo[1]] && @board[combo[1]] == @board[combo[2]]
        return combo
      end
    end
  end

  def full?

  end

  def draw?
    #returns true if nothing won
  end

  def over?
    #board won or returns true
  end

  def winner
    #returns the x or the o that one
  end

  def play

  end

end
