class AdminsController < ApplicationController


	def new
	
		if !current_admin
		@admin=Admin.new
		else
		redirect_to root_url, :notice => "Sorry you can`t open that URL.\t Admin already logged in."
		end
		
	end

	def create

		@admin = Admin.find_by_email(params[:email])

		if @admin && @admin.authenticate(params[:password])
		session[:admin_id]=@admin.id
		redirect_to root_url, :notice => "Admin Successfully Logged in"
		else
		flash.now.alert = "Invalid Email or password, Please try again."		
		render 'new'
		
		end
	end

	
	def destroy
		session[:admin_id] = nil
		redirect_to root_url, :notice => "Admin Logged out!"
	end		
		



end
