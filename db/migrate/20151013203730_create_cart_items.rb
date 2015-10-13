
class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.references :cart, index: true, foreign_key: true
      t.references :items, index: true, foreign_key: true
      t.integer :number

      t.timestamps null: false
    end
  end
end
