class ResponsesController < ApplicationController

  def new
    @languages = Language.all
    @countries = CS.countries
    @cities = CS.states(:gb).keys.flat_map { |state| CS.cities(state, :gb) }
  end

  def create
    @response = Response.new(response_params)
    @response.save
    redirect_to root_url
    flash[:notice] = "Data submitted"
  end

  private
  def response_params
    params.require(:response).permit(:location, languages: [])
  end

  def cities
    render json: (CS.states(params[:country]).keys.flat_map { |state| CS.cities(state, params[:country]) }).to_json
  end

end
