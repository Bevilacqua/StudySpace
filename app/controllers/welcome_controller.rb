class WelcomeController < ApplicationController
	include CurrentUser
	before_action :set_user, only: [:index]

	def index
		redirect_to @user, :action => :show	
	end
end
