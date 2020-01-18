class CreateTableEmail < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.references :task, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.references :comment, null: false, foreign_key: true
      t.text :email_message
      t.timestamps
    end
  end
end
