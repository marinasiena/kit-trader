class ClubsController < ApplicationController

  def index
    @clubs = Club.all

    search = params[:search]
    @clubs = @clubs.where('long_name || short_name ILIKE ?', ["%#{search}%"]) unless search.blank?

    render
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
    @club = Club.find(params[:id])

    def to_builder
      Jbuilder.new do |club|
        @club.(self, :long_name, :short_name, :location, :image)
      end
    end
  end
  # GET /clubs/new
  def new
    @club = Club.new
  end

  # GET /clubs/1/edit
  def edit
  end

  # POST /clubs
  # POST /clubs.json
  def create
    @club = Club.new(club_params)

    respond_to do |format|
      if @club.save
        format.json { render :show, status: :created, location: @club }
      else
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clubs/1
  # PATCH/PUT /clubs/1.json
  def update
    @club = Club.find(params[:id])

    respond_to do |format|
      if @club.update(club_params)
        format.json { render :show, status: :ok, location: @club }
      else
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubs/1
  # DELETE /clubs/1.json
  def destroy
    @club = Club.find(params[:id])

    @club.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_params
      params.require(:club).permit(:long_name, :short_name, :location, :image)
    end
end
