class UsersController < ApplicationController

  before_action :check_for_ad, :only => [:index]

def index
  @users = User.all
end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
    session[:user_id] = @user.id
    redirect_to root_path #redirect to home if account avlid
  else
    render :new #or let them try again on for
  end
end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
