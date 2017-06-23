class ResponsesController < ApplicationController

  def new
    @languages = Language.all
  end

  def create
    @response = Response.new(languages: response_params[:languages])
    @response.save
    @location = Location.new(city: response_params[:location], response_id: @response.id)
    @location.save
    redirect_to root_url
    flash[:notice] = "Data submitted"
  end

  private
  def response_params
    params.require(:response).permit(:location, languages: [])
  end
end
