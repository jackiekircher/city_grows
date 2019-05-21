class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def create
    redirect_to Game.new_game
  end

  def show
    @game = Game.find(params[:id])
  end
end
