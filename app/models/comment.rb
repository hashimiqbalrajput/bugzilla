class Comment < ApplicationRecord
  has_many :notifications
  belongs_to :task
  belongs_to :project
  belongs_to :user
end