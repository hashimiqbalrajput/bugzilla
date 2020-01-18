class Project < ApplicationRecord
  # before_create :set_owner_id

  has_many :project_users, dependent: :destroy
  has_many :users, through: :project_users

  validates :title, presence: true

  # def set_owner_id
  #   self.owner_id = current_user.id
  # end

  def owner
    self.users.find(self.owner_id).name
  end

end
