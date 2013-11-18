class LocationsController < ApplicationController
  def index
      @locations = location.all
  end

  def show
    @location = Location.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @speaker }
    end
  end

  def new
    @location = Location.new
  end

  def edit
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.new(params[:location])
    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'location was successfully created.'}
        format.json { head :no_content }

      else
        format.html { render action: "edit" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    respond_to do |format|
      format.html { redirect_to locations_url }
      format.json { head :no_content }
    end
  end
end
