class Connect4 < ActiveRecord::Base
  require_relative "board"
  require_relative "player"
  require_relative "human"
  require_relative "computer"

  attr_reader :game_board

  def initialize(board = nil)
    @game_board = Board.new(board)
  end

  def game_over?
    check_victory || check_draw
  end

  def check_victory
    @game_board.winning_combination?
  end

  def check_draw
    @game_board.full?
  end

end
