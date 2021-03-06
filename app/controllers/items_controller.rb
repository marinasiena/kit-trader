class ItemsController < ApplicationController

  # GET /items
  # GET /items.json
  def index
    @items = Item.all

    q = params[:q]
    @items = @items.where('item_type || color ILIKE ?', ["%#{q}%"]) unless q.blank?

  end

  # GET /items/1
  # GET /items/1.json
  def show

    @item = Item.find(params[:id])

    def to_builder
      Jbuilder.new do |item|
        @item.(self, :item_type, :size, :number, :color, :condition,)
      end
    end


  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.json { render :show, status: :created, location: @item }
      else
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update(item_params)
        format.json { render :show, status: :ok, location: @item }
      else
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = Item.find(params[:id])

    @item.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:item_type, :size, :number, :color, :condition,)
    end
end
