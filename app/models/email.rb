class Email < ApplicationRecord
  has_many :user_emails
  has_many :users, through: :user_emails
  belongs_to :comment
  belongs_to :task
  belongs_to :project
end