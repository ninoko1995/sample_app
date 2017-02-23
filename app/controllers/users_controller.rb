class UsersController < ApplicationController
  before_action :logged_in_user, only:[:edit,:update]
  before_action :set_user, only: [:show,:edit,:update]
  
  def new
  	@user=User.new
  end

  def create
  	@user=User.new(user_params)
  	
  	if @user.save
      log_in @user
  		flash[:success]='Welcome to the SampleApp!'
  		redirect_to @user
  		#redirect_to user_url(@user)
  	else
  		##To use render, the variables will hold.
  		render 'new'
  	end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success]='Successfully updated!'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def show
  end

  private
	  def user_params
	  	params.require(:user).permit(:name, :email, :password,:passwoed_confirmation)
	  end

    def set_user
      @user = User.find(params[:id])
    end

    def logged_in_user
      unless logged_in?
        flash[:danger] = 'please log in'
        redirect_to login_url
      end
    end

end