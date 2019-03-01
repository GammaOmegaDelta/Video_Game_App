Rails.application.routes.draw do
  namespace :api do
    get '/video_games' => 'video_games#index'
  end
end
