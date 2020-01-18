class Task < ApplicationRecord
  belongs_to :creator, class_name: 'Manager'
  belongs_to :assignee, class_name: 'Developer'
end