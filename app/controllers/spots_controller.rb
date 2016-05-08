class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "Admin", password: ENV["ADMIN_PASS"], only: [:edit, :update, :create, :destroy]

  # GET /spots
  # GET /spots.json
  def index
    @spots = Spot.all
  end

  # GET /spots/1
  # GET /spots/1.json
  def show
    @status = Status.new
    @top_statuses = @spot.statuses.last(3)
    @missing_count = 3 - @top_statuses.count
    @w_type = resolve_type @spot.stype
  end

  # GET /spots/new
  def new
    @spot = Spot.new
  end

  # GET /spots/1/edit
  def edit
  end

  # POST /spots
  # POST /spots.json
  def create
    @spot = Spot.new(spot_params)

    respond_to do |format|
      if @spot.save
        format.html { redirect_to @spot, notice: 'Spot was successfully created.' }
        format.json { render action: 'show', status: :created, location: @spot }
      else
        format.html { render action: 'new' }
        format.json { render json: @spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spots/1
  # PATCH/PUT /spots/1.json
  def update
    respond_to do |format|
      if @spot.update(spot_params)
        format.html { redirect_to @spot, notice: 'Spot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spots/1
  # DELETE /spots/1.json
  def destroy
    @spot.destroy
    respond_to do |format|
      format.html { redirect_to spots_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spot
      @spot = Spot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spot_params
      params.require(:spot).permit(:name, :location, :description, :type, :current_sound_level, :rating, :rating_count, :checkin_count)
    end

    def restrict
      http_basic_authenticate_with :password => ENV['ADMIN_PASS']
    end

    def resolve_type id
      if id.to_i == 0
        return "Inside"
      elsif id.to_i == 1
        return "Outside"
      elsif id.to_i == 2
        return "Hybrid"
      else
        return "Special"
      end 
    end
end
