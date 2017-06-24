class ResponsesController < ApplicationController

  def new
    @languages = Language.all
  end

  def create
    @response ||= Response.new
    @response.save
    response_params[:languages].each do |language|
      create_language_join_response_path(language, @response.id)
    end
    if response_params[:city] != ""
      redirect_to response_locations_path(response_id: @response.id, city: response_params[:city])
    else
      redirect_to root_url
      flash[:notice] = "Data submitted"
    end
  end

  def create_language_join_response_path(language, response_id)
    @response_language = ResponseLanguage.new(language_id: language, response_id: response_id)
    @response_language.save
  end

  private
  def response_params
    params.require(:response).permit(:city, languages: [])
  end

  def response_location
    if response_params[:city] != ""
      redirect_to response_locations_path(response_id: @response.id, city: response_params[:city])
    else
      redirect_to root_url
      flash[:notice] = "Data submitted"
    end
  end
end
