class RegistrationsController < Devise::RegistrationsController
  before_filter :authenticate_user!, :only => :token

  def new
    super
  end


  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in(@user, :bypass => true)
      redirect_to user_steps_path
    else
      render "new"
    end
  end

  def update
    super
  end
end
