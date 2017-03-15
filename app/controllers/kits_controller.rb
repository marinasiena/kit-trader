class KitsController < ApplicationController

  # GET /kits
  # GET /kits.json
  def index
    @kits = Kit.all

    render
  end

  # GET /kits/1
  # GET /kits/1.json
  def show
    def to_builder
      Jbuilder.new do |kit|
        @kit.(self, :trans_type, :price, :zip_code, :league, :season)
      end
    end
  end

end
