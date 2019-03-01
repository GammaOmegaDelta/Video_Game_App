class Api::VideoGamesController < ApplicationController
  def index
    @video_games = VideoGame.all
    render 'index.json.jbuilder'
  end
end
