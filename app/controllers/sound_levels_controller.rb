class SoundLevelsController < ApplicationController
  def new
  	user = User.find(cookies[:u_id])
  	@spot = Spot.find(params[:spot_id])
  	@sound_level = SoundLevel.create(:spot_id => @spot.id.to_i, :user_id => user.id.to_i, :value => params[:value])
  	if @sound_level.valid?
  		@spot.current_sound_level = ((@sound_level.value.to_i + @spot.current_sound_level.to_i)) / 2
  		@spot.save
  	end
  	redirect_to @spot
  end

  def sound_level_params
      params.permit(:spot_id)
    end
end
