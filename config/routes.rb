Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :invitations => 'users/invitations'
  },path_names: { sign_in: "login", sign_out: "logout"}

  # 質問
  resources :questions

  # 問題項目
  resources :categories

  # 問題
  resources :tasks

  # 利用者
  resources :users

  # お知らせ
  resources :reports


  # アカウント編集画面
  get 'profile' => 'user_profile#edit', as: :get_profile

  # アカウント更新
  put 'profile' => 'user_profile#update', as: :update_profile

  namespace :api do
    resources :questions
    resources :categories
    resources :tasks
  end

  # ログイン後のページ
  root to: "tasks#index"
 end
