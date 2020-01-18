class CreateTableNotification < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.references :comment, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.text :notification_message
      t.timestamps
    end
  end
end
