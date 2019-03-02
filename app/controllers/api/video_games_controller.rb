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

  def create
    @video_game = VideoGame.new(
      title: params[:input_title],
      platform: params[:input_platform],
      description: params[:input_description],
      players: params[:input_players],
      genre: params[:input_genre],
      )
    @video_game.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @video_game = VideoGame.find_by(id: the_id)
    @video_game.update(
      title: params[:input_title],
      platform: params[:input_platform],
      description: params[:input_description],
      players: params[:input_players],
      genre: params[:input_genre]
      )
    render 'show.json.jbuilder'
  end
end
