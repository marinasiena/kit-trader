class KitsController < ApplicationController

  # GET /kits
  # GET /kits.json
  def index
    @kits = Kit.all

    q = params[:q]
    @kits = @kits.where('trans_type || league ILIKE ?', ["%#{q}%"]) unless q.blank?

  end

  # GET /kits/1
  # GET /kits/1.json
  def show
    @kit = Kit.find(params[:id])

    def to_builder
      Jbuilder.new do |kit|
        @kit.(self, :trans_type, :price, :zip_code, :league, :season, :comment)
      end
    end
  end

  # GET /kits/new
  def new
    @kit = Kit.new
  end

  # GET /kits/1/edit
  def edit
  end

  # POST /kits
  # POST /kits.json
  def create
    @kit = Kit.new(kit_params)

    respond_to do |format|
      if @kit.save
        format.json { render :show, status: :created, location: @kit }
      else
        format.json { render json: @kit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kits/1
  # PATCH/PUT /kits/1.json
  def update
    @kit = Kit.find(params[:id])

    respond_to do |format|
      if @kit.update(kit_params)
        format.json { render :show, status: :ok, location: @kit }
      else
        format.json { render json: @kit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kits/1
  # DELETE /kits/1.json
  def destroy
    @kit = Kit.find(params[:id])

    @kit.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kit
      @kit = Kit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kit_params
      params.require(:kit).permit(:trans_type, :price, :zip_code, :league, :season, :comment)
    end
end
