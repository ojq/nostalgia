class AdminsController < ApplicationController
  before_filter :authenticate_admin!

#active_scaffold :admin do |conf|
#  list.label = "Administratorzy"
#    config.columns = [:email, :approved]
#    list.sorting = {:approved => 'ASC'}
#    columns[:email].label = "E-mail"
#    columns[:email].description = "E-mail użyty przy rejestracji"
#    columns[:approved].label = "Aktywny"
#    columns[:approved].description = "Aby użytkownik mógł się zalogować konto musi być aktywne"
#  end


def index
   if params[:approved] == "false"
     @admins = Admin.find_all_by_approved(false)
   else
     @admins = Admin.all
   end
end

def undo_link
  view_context.link_to("undo", revert_version_path(@admin.versions.scoped.last), :method => :post)
end
end
