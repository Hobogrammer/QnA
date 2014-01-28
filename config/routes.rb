Qna::Application.routes.draw do

  devise_for :users
  resources :queries

  root to: 'queries#index'
end
