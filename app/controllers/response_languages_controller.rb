class ResponseLanguagesController < ApplicationController
  def create
    @response_language = ResponseLanguage.new(response_id: params[:response_id], language_id: params[:language_id])
    @response_language.save
  end

  def location_params
    params.require(:response).permit(:response_id, :language_id)
  end
end
