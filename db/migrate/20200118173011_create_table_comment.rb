class CreateTableComment < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :task, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.text :comment, null: true
      t.timestamps
    end
  end
end
