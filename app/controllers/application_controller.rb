class ApplicationController < ActionController::Base

before_action :fetch_user

private
  def fetch_user
    #set up @current_user once someone has lgged in
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
    session[:user_id] = nil unless @current_user.present? #this prevents horros when reseeding

  end

  def check_for_login
    redirect_to login_path unless @current_user.present?
  end

    def check_for_admin
      redirect_to login_path unless (@current_user.present? && @current_user.admin?)
  end

end
