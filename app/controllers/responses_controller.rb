class ResponsesController < ApplicationController

  def new
    @languages = Language.all
  end

end
