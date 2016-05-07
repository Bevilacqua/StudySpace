module CurrentUser extend ActiveSupport::Concern

	private

	def set_user
		@current_user = User.find(request.remote_ip)
		session[:user_id] = @current_user.id
	rescue ActiveRecord::RecordNotFound
		@current_user = User.create
		session[:user_id] = @current_user.id
	end

end