class LocationsController < ApplicationController
  def index
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.find_or_create_by(city: params[:city].capitalize)
    @response_location = ResponseLocation.new(response_id: params[:response_id], location_id: @location.id)
    @response_location.save
    create_languages
    redirect_to root_url
    flash[:notice] = "Data submitted"
  end

  private

  def location_params
    params.require(:location).permit(:response_id, :city, languages: [])
  end

  def create_languages
    params[:languages].each do |language|
      create_language_join_response_path(language, @location.id)
    end
  end

  def create_language_join_response_path(language, location_id)
    @location_language = LocationLanguage.new(language_id: language, location_id: location_id)
    @location_language.save
  end
end
