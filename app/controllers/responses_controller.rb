class ResponsesController < ApplicationController

  def new
    @languages = Language.all
  end

  def create
    if !response_params[:languages] || response_params[:city] == ""
      flash[:notice] = "Please complete both fields"
      redirect_to new_response_path
      return
    end
    @response ||= Response.new
    @response.save
    create_languages
    create_response_location(@response.id, response_params[:city])
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

  def self.link_language
    @response_languages = ResponseLanguage.all
    @languages = Language.all
    output = []
    @language_pair = [@languages[0], @languages[1]]
    output << @response_languages.where(language_id: [@language_pair[0].id, @language_pair[1].id]).group(:response_id).count
    sum = 0
    output[0].each {|output| output[1] > 1 ? sum += 1 : nil}
    puts sum
    return sum
  end

end
