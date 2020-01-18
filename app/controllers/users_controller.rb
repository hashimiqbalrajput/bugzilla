class UsersController < Devise::RegistrationsController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show
    
  end

  def edit

  end

  def update

  end

  def new

  end

  def create
    p 'hello'
    p ' -'*1230
  end

  def destroy

  end

  private

  def users_params
  	params.require(:user).permit(:name, :email, :user_type)
  end

  def set_user
  	@user = User.find(params: id)
  end
end
