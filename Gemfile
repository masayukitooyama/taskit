source 'https://rubygems.org'

ruby '2.1.2'

#------------------
# app
#------------------
gem 'rails', '4.2.5'
gem 'mysql2', '>= 0.3.13', '< 0.5'
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'

# 認証用ライブラリ
gem 'devise'
gem 'devise-i18n'
# gem 'devise_invitable', '~> 1.5.2'

# pagenation
gem 'kaminari'
# 論理削除
gem 'paranoia', '~> 2.0'
# 設定ファイル
gem 'dotenv-rails'
# マスタデータ
gem 'seed-fu'
# プログレスバー
gem 'nprogress-rails'

#------------------
# infra
#------------------
gem 'unicorn'
# gem 'capistrano-rails', group: :development


group :development, :test do
  gem 'better_errors' # Better Errors本体
  gem 'binding_of_caller' # Better Errors上でREPLを使用するためのgem
  gem 'pry-rails'  # rails console(もしくは、rails c)でirbの代わりにpryを使われる
  gem 'pry-byebug' # デバッグを実施(Ruby 2.0以降で動作する)
  gem 'pry-doc'
  gem 'pry-rescue'
  gem 'spring'
  gem 'faker'
  gem 'rspec-rails'
  gem 'quiet_assets'
end


  # gem 'capistrano', '~> 3.2.1'
  # gem 'capistrano-rails',   '~> 1.1', require: false
  # gem 'capistrano-bundler', '~> 1.1', require: false
  # gem 'capistrano-rbenv', '~> 2.0', require: false
  # gem 'capistrano3-unicorn'
