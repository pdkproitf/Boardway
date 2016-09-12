class PlaysController < ApplicationController
  before_action :find_play, only: [:show, :destroy, :edit, :update]

  def index
    @plays = Play.all.order('created_at DESC')
  end

  def new
    @play = Play.new
  end

  def show
    
  end

  def create
    @play = Play.new(play_params)
    if @play.save
      redirect_to @play
    else
      render 'new'
    end
  end

  private 
    def find_play
      @play = Play.find(params[:id])
    end

    def play_params
      params.require(:play).permit(:title, :description, :director)
    end
end
