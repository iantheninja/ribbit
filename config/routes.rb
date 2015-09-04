Rails.application.routes.draw do
  resources :ribbs
  get 'sessions/new'

  post 'sessions/create'

  get 'sessions/destroy'

  resources :users
  root to: 'users#new'
end
