Rails.application.routes.draw do

  resources :questions
  resources :categories
  resources :tasks
  namespace :api do
    resources :categories
    resources :tasks
  end
  get '/' => 'top#index'
 end
