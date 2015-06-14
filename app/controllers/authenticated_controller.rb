class AuthenticatedController < ApplicationController
  before_action :require_login

  private

  def admin?
    current_user.admin?
  end
  helper_method :admin?

  def require_admin
    deny_access unless admin?
  end

  def require_login
    deny_access unless current_user
  end

  def deny_access(options = {})
    path = options.fetch(:path, login_path)
    message = options.fetch(:message, t("flash.authenticated.denied"))
    redirect_to path, alert: message
  end

  def sign_in(user, options = {})
    path = options.fetch(:path, root_path)
    message = options.fetch(:message, t("flash.authenticated.logged_in"))
    warden.set_user(user)
    redirect_to path, notice: message
  end
end
