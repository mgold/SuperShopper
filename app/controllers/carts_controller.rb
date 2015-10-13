class CartsController < ApplicationController
  def new
    @items = Item.all
  end
end
