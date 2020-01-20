class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable

  has_many :project_users
  has_many :projects, through: :project_users
  has_many :user_tasks
  has_many :tasks, through: :user_tasks
  has_many :comments
  has_many :user_emails
  has_many :emails, through: :user_emails

  # after_create :send_email

  validates :email, presence: true

  def send_email
    UserMailer.with(user: self).welcome_email.deliver_now
  end
end
