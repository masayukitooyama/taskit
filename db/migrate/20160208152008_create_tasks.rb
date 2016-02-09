class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer  :category_id, null: false
      t.string   :title, null: false
      t.text     :content, null: false

      t.datetime :end_time
      t.datetime :deleted_at
      t.timestamps null: false
    end
  end
end
