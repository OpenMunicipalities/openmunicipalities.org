class NewslettersController < ApplicationController

def create
    
	
	@newsletter = Newsletter.new(params[:newsletter])

	

  	if @newsletter.save


      		
      		redirect_to root_path, :notice =>  "Thankyou for subscribing to our newsletter."
    	else
      		redirect_to root_path ,
		:notice => "Some error occured, Please try again later."
    	end
  
end





end
