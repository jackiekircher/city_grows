Rails.application.routes.draw do
  resources :games, only: [:index, :create, :show], path: '/'
end
