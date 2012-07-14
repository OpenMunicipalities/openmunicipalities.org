class UsersController < ApplicationController

def new
@user = User.new
end

def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path, :notice => "Congratulations!!<br/>You have successfully signed up."
    else
      render 'new'
    end
  end

end
