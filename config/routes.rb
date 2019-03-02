Rails.application.routes.draw do
  namespace :api do
    get '/video_games' => 'video_games#index'
    get '/video_games/:id' => 'video_games#show'
    post '/video_games' => 'video_games#create'
    patch '/video_games/:id' => 'video_games#update'
  end
end
