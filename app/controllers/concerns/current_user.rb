module CurrentUser extend ActiveSupport::Concern

	private

	def set_user
		@user = User.find(request.remote_ip)
	rescue ActiveRecord::RecordNotFound
		@user = User.create
	end

end