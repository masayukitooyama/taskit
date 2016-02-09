Rails.application.routes.draw do


  namespace :api do
    resources :categories
    resources :tasks
  end
end
