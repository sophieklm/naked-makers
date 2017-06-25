class ResponsesController < ApplicationController
  def new
    @languages = Language.all
  end

  def create
    @response ||= Response.new
    @response.save
    if response_params[:languages]
      create_languages
    end
    if response_params[:city] != ""
      create_response_location(@response.id, response_params[:city])
    else
      redirect_to root_url
      flash[:notice] = "Data submitted"
    end
  end

  private
  def response_params
    params.require(:response).permit(:city, languages: [])
  end

  def create_languages
    response_params[:languages].each do |language|
      create_language_join_response_path(language, @response.id)
    end
  end

  def create_language_join_response_path(language, response_id)
    @response_language = ResponseLanguage.new(language_id: language, response_id: response_id)
    @response_language.save
  end

  def create_response_location(response_id, city)
    redirect_to response_locations_path(response_id: response_id, city: city)
  end
end
