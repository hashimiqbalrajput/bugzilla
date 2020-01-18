class CreateTableUserEmail < ActiveRecord::Migration[6.0]
  def change
    create_table :user_emails do |t|
      t.references :user, null: false, foreign_key: true
      t.references :email, null: false, foreign_key: true
    end
  end
end
