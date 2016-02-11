Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :invitations => 'users/invitations'
  }

  # 質問
  resources :questions

  # 問題項目
  resources :categories

  # 問題
  resources :tasks


  namespace :api do
    resources :questions
    resources :categories
    resources :tasks
  end

  # ログイン後のページ
  root to: "tasks#index"
 end
