class RatingsController < ApplicationController
  def new
  	user = User.find(cookies[:u_id])
  	@spot = Spot.find(params[:spot_id])
  	@rating = Rating.create(:spot_id => @spot.id.to_i, :user_id => user.id.to_i, :value => params[:value])
    if @rating.valid?
    	@spot.rating_count = (@spot.rating_count.to_i + 1)
    	@spot.rating = ((@spot.rating.to_i + @rating.value.to_i) / @spot.rating_count.to_i)
    	@spot.save
    end
  	redirect_to @spot
  end

  def rating_params
      params.permit(:spot_id)
    end
end
