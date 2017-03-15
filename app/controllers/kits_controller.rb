class KitsController < ApplicationController

  def index
    @kits = Kit.all

    render json: @kits
  end
end
