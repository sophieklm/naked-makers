class ResponseLanguagesController < ApplicationController
  def create
    @response_language = ResponseLanguage.new(response_id: params[:response_id], language_id: params[:language_id])
    @response_language.save
    link_language
  end

  def location_params
    params.require(:response).permit(:response_id, :language_id)
  end

  def link_language
    @response_languages = ResponseLanguage.all
    puts @response_langauges.group(:language_id)
  end
end
