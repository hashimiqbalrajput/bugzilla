class CreateTableTask < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false, index: true, unique: true
      t.text :description, null: true
      t.date :deadline
      t.integer :creator_id, null: false, index: true
      t.integer :assignee_id, null: true
      t.string  :status, null: false, default: "new"
      t.string :task_type, null: false, insex: true
      t.references :project, null: false, foreign_key: true
      t.timestamps
    end
  end
end
