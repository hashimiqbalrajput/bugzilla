class Project < ApplicationRecord
  # before_create :set_owner_id

  has_many :project_users, dependent: :destroy
  has_many :users, through: :project_users
  has_many :tasks
  has_many :comments
  belongs_to :owner, class_name: 'User'

  validates :title, presence: true

  # def set_owner_id
  #   self.owner_id = current_user.id
  # end

end
