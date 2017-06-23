class LocationController < ApplicationController
  def create
    @response = Response.find(params[:response_id])
    @location = Location.create(city: location_params[:city], response_id: @response.id)
    redirect_to root_url
  end

  private

  def location_params
    params.require(:location).permit(:city)
  end
end
