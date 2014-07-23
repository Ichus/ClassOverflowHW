Rails.application.routes.draw do

  resources :answers, only: [:new, :create]

  resources :questions, only: [:index, :show, :new, :create]

  root 'questions#index'
end
