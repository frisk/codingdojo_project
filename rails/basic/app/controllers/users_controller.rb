class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  def edit
  	@user = User.find(params[:id])
  end
  def update
      @user = User.find(params[:id])
	  if @user.update_attributes(params[:user])
	    redirect_to @user, notice: 'Post was successfully updated.'
	  else
	    render "edit"
	  end
  end
  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to @user, notice: 'User was successfully created'
  	else
  		render "new"
  	end
  end
  def show
  	@user = User.find(params[:id])
  end
  def destroy
  	@user = User.find(params[:id])
  	@user.destroy

  	redirect_to users_url
  end
  def index
  	@users = User.all
  	@user_count = 0
  end
end
