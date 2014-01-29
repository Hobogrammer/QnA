Qna::Application.routes.draw do

  devise_for :users
  resources :queries

  get '/queries/:id/users', to: 'queries#show_users', as:  :query_users
  root to: 'queries#index'
end
