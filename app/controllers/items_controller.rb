class ItemsController < ApplicationController

  # GET /items
  # GET /items.json
  def index
    @items = Item.all

    render
  end

  # GET /items/1
  # GET /items/1.json
  def show
    def to_builder
      Jbuilder.new do |item|
        @item.(self, :item_type, :size, :number, :color, :condition, :comment)
      end
    end
  end

end
