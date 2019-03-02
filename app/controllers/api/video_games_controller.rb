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
      title: "Nier: Automata",
      platform: "Playstation, PC, Xbox",
      description: "Set in the midst of a proxy war between machines created by otherworldly invaders and the remnants of humanity, the story follows the battles of a combat android, her companion, and a fugitive prototype.",
      players: 1,
      genre: "Action Role-Play, Hack & Slash",
      )
    @video_game.savel
    render 'show.json.jbuilder'
  end
end
