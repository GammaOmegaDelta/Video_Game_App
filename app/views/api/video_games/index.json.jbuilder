json.array! @video_games.each do |video_game|
  json.id video_game.id
  json.title video_game.title
  json.platform video_game.platform
  json.description video_game.description
  json.players video_game.players
  json.genre video_game.genre
end