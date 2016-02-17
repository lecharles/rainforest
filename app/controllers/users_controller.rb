class UsersController < ApplicationController
  before_action :ensure_logged_in, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to products_url, notice: "Signed up successfully! Log in: to add, edit, and review products."
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private #STRONG PARAMS
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

# Questions:
# where is :user coming from ?


#THE ABOVE IS THE RESULT OF RUNNING (excluding what's inside each corresponding method):
#$ rails g controller users new create
