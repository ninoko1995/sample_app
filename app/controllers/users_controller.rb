class UsersController < ApplicationController
  def new
  	@user=User.new
  end

  def create
  	@user=User.new(user_params)
  	
  	if @user.save
  		flash[:success]='Welcome to the SampleApp!'
  		redirect_to @user
  		#redirect_to user_url(@user)
  	else
  		##To use render, the variables will hold.
  		render 'new'
  	end
  end

  def show
  	@user=User.find(params[:id])
  end

  private
	  def user_params
	  	params.require(:user).permit(:name, :email, :password,:passwoed_confirmation)
	  end
end
