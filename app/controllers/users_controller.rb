class UsersController < AuthenticatedController
  skip_before_action :require_login

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in @user, message: t("flash.users.create.notice")
    else
      respond_with @user, location: root_path  
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :institution_id)
  end

end
