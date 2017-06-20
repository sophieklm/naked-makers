class ResponsesController < ApplicationController
  def new
    @languages = Language.all
  end
  def index
    @responses = Response.all
  end
  def create
    @response = Response.new(response_params)
    @response.save
    redirect_to responses_path
  end

  private
  def response_params
    params.require(:response).permit(:location, languages: [])
  end
end
