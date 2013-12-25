TwitterExample::Application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
 
  resources :tweets, only: [:new, :create]
  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
 
  root to: "home#show"
end
