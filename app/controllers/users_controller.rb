class UsersController < ApplicationController
  include CurrentUser
  before_action :set_user, only: [:view]

  def view
  	@user = User.find(session[:user_id])
  end

  # POST /user
  # POST /user.json
  def create
    @user = User.new(user_params)
    @user.ip_adr = request.remote_ip
    @user.name = "Anonymous Hator"

    respond_to do |format|
      if @user.save
#        format.html { redirect_to @user, notice: 'User was successfully created.' }
#        format.json { render action: 'show', status: :created, location: @user }
      end
    end
  end

 private
 	def generate_name()
 		return "Anonymous Hator"
 	end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name)
    end
end
