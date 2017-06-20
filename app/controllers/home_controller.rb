class HomeController < ApplicationController
  def index
    @responses = Response.all
  end
end
