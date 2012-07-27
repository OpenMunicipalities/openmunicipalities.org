class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #force_ssl 
  #Remove above comment in testing and production environment for  forcing it to ssl. :)







  private

  def current_admin
	@current_admin ||=Admin.find(session[:admin_id]) if session[:admin_id]
  end

   helper_method :current_admin

end
