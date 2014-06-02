class ApplicationController < ActionController::Base
  before_filter :require_login
  protect_from_forgery with: :null_session # :exception

  private
  def not_authenticated
    redirect_to login_path, alert: "ログインしてください。"
  end
end
