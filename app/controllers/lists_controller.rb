class ListsController < ApplicationController
  before_action :set_board
  def index
    @lists = @board.lists
  end

  def show
  end

  def new
  end

  def edit
  end

  private 
  def set_board
    @board = Board.find(params[:board_id])
  end
end
