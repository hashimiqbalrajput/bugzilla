class CreateTableUserProject < ActiveRecord::Migration[6.0]
  def change
    create_table :project_users do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.references :project, null: false, foreign_key: true, index: true
    end
  end
end
