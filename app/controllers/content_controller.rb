class ContentController < ApplicationController

def index

	if !current_admin
	redirect_to new_admin_path , :notice => "Please login."
	end



end


end
