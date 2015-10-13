class CartItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :item

  #TODO before save, delete if number == 0
  #TODO validate number is not negative
end
