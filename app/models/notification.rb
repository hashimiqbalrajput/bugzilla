class Notification < ApplicationRecord
  has_many :user_notifications
  has_many :users, through: :user_notifications
  belongs_to :comment
  belongs_to :task
  belongs_to :project
end