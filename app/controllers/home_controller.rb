class HomeController < ApplicationController
  def index
  end

  def data
    @responses = Response.all
    output = []
    results = []
    @responses.each do |response|
      output += response.languages
    end
    results = output.inject(Hash.new(0)) { |h, e| h[e] += 1 ; h }
    data_values = results.values
    data_names = results.keys
    data = { names: data_names, values: data_values }
    respond_to do |format|
      format.json {
        render :json => data
      }
    end
  end
end
