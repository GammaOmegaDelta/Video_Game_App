class Api::VideoGamesController < ApplicationController
  def index
    @video_games = VideoGame.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @video_game = VideoGame.find_by(id: the_id)
    render 'show.json.jbuilder'
  end
end
