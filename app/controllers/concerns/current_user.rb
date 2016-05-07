module CurrentUser extend ActiveSupport::Concern

	private

	def set_user
		@current_user = User.find(request.env["HTTP_X_FORWARDED_FOR"])
		logger.debug "IP: " + request.env["HTTP_X_FORWARDED_FOR"]
		session[:user_id] = @current_user.id
	rescue ActiveRecord::RecordNotFound
		@current_user = User.create(:ip_adr => request.env["HTTP_X_FORWARDED_FOR"])
		session[:user_id] = @current_user.id
	end

end