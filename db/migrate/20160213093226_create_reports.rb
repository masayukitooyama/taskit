class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string   :title, null: false
      t.text     :body
      t.datetime :deleted_at
      t.timestamps null: false
    end
  end
end
