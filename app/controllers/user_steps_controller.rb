class UserStepsController < Wicked::WizardController
  include Wicked::Wizard
  
  steps :personal
  
  def show
    @user = current_user
    render_wizard
  end
  
  def update
    @user = current_user
    @user.attributes = params[:user]
    render_wizard @user
  end
  
  private
    def redirect_to_finish_wizard
      redirect_to root_url
    end
end
