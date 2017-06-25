class ResponsesController < ApplicationController

  def new
    @languages = Language.all
  end

  def create
    @response = Response.new(languages: response_params[:languages])
    @response.save
    if response_params[:city] != ""
      redirect_to response_locations_path(response_id: @response.id, city: response_params[:city])
    else
      redirect_to root_url
      flash[:notice] = "Data submitted"
    end
  end

  private
  def response_params
    params.require(:response).permit(:city, languages: [])
  end
end
