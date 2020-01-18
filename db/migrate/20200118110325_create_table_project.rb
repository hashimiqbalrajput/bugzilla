class CreateTableProject < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title, null: false, default: "New Project"
      t.string :content, null: true
      # t.references :user, as: :owner_id, foreign_key: true
      t.integer :owner_id, null: false

      t.timestamps
    end
  end
end
