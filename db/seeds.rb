# 開発用テストデータ
if Rails.env == 'development'
  load(Rails.root.join( 'db', 'seeds', 'category_seeder.rb'))
  load(Rails.root.join( 'db', 'seeds', 'task_seeder.rb'))
end
