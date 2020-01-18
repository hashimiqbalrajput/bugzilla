class CreateTableProjectUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :project_users do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
    end
    add_index :project_users, [:user_id, :project_id], unique: true
  end
end
