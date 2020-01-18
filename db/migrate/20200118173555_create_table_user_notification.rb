class CreateTableUserNotification < ActiveRecord::Migration[6.0]
  def change
    create_table :user_notifications do |t|
      t.references :user, null: false, foreign_key: true
      t.references :notification, null: false, foreign_key: true
    end
  end
end
