class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to products_url, notice: "C'es bon! Signed up!"
    else
      render :new
    end
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
