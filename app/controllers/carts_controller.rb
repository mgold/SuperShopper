class CartsController < ApplicationController
  # The joys of not caring about security because it's a demo
  skip_before_filter :verify_authenticity_token

  def new
    @items = Item.all
  end

  def create
    items = params.select{|k, v| k.start_with?(item_prefix) && v != "0"}
    redirect_to :new_cart if items.empty?
    cart = Cart.create
    items.each do |k, v|
      CartItem.create(cart: cart, item: k[item_prefix.length..-1].to_i, number: k.to_i)
    end
  end

  def item_prefix
    "item."
  end
end
