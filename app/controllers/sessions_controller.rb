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
    redirect_to root_path, notice: t("flash.authenticated.signed_in")
  end

  def destroy
    warden.logout
    redirect_to sign_in_path, notice: t("flash.authenticated.signed_out")
  end
end
