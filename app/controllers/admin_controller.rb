class AdminController < ApplicationController

	before_action :authenticate_user!

	def all_users
		@users = User.where(role: "employee")
	end

	def show_user 
		@user = User.find(params[:id])
	end

	def edit_user
		@user = User.find(params[:id])
		@user.update(supervisor: params[:supervisor])
		redirect_to all_users_path
	end

	def delete_user
    @user = User.find(params[:id].to_i)
    @user.destroy
    redirect_to all_users_path
  end  
	
end
