class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.integer :task_id
      t.text :body
      t.datetime :deleted_at

      t.timestamps null: false
    end
  end
end
