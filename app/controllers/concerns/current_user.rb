module CurrentUser extend ActiveSupport::Concern

	private

	def set_user
		@user = User.find(cookies[:u_id])
		logger.info "User found"
	rescue ActiveRecord::RecordNotFound
		logger.info "User not found"
		@user = User.create
		cookies[:u_id] = @user.id
	end
end