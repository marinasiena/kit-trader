class ClubsController < ApplicationController

  def index
    @clubs = Club.all

    render
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
    def to_builder
      Jbuilder.new do |club|
        @club.(self, :long_name, :short_name, :location, :image)
      end
    end
  end
end
