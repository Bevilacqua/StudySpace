module CurrentUser extend ActiveSupport::Concern

	private

	def set_user
		@user = User.find(cookies[:u_id])
		logger.info "User found"
	rescue ActiveRecord::RecordNotFound
		@user = User.create(:uname => "Anonyomous Pencil")
		cookies[:u_id] = @user.id.to_i
		return
	end
end