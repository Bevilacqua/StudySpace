class CheckinsController < ApplicationController
  
  def new
	user = User.find(cookies[:u_id])
  	@spot = Spot.find(params[:spot_id])
  	@checkin = Checkin.create(:spot_id => @spot.id.to_i, :user_id => user.id.to_i)
  	redirect_to @spot
  end

  private 

  def status_params
      params.permit(:spot_id)
    end
end
