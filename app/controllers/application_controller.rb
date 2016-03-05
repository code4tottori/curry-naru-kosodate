class ApplicationController < ActionController::API
protected
  def authorize_user
    @user = User.find_by_user_id(session[:user_id])
  end
end
