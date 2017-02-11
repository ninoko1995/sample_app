module SessionsHelper
	 #渡されたユーザーでログインする
  def log_in(user)
  	session[:user_id] = user.id
  end

  def current_user
  	# if @current_user.nil?
  	# 	@current_user = User.find_by(id: session[:user_id])#findだと例外を返してしまうので、find_byを用いる
  	# else
  	# 	@current_user
  	# end

  	# @current_user = @current_user || User.find_by(id: session[:user_id])

  	@current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
  	!current_user.nil?
  end

  #現在のユーザーのログアウト
  def log_out
  	session.delete(:user_id)
  	@current_user = nil
  end
end
