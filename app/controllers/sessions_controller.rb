class SessionsController < AuthenticatedController
  before_action :require_login, only: :destroy

  def new
    if current_user
      redirect_to root_path
    end

    if warden.message
      flash.now.alert = warden.message
    end
  end

  def create
    warden.authenticate!
    redirect_to root_path, notice: t("flash.authenticated.logged_in")
  end

  def destroy
    warden.logout
    redirect_to login_path, notice: t("flash.authenticated.logged_out")
  end
end
