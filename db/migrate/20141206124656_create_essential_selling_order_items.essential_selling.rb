# This migration comes from essential_selling (originally 20141204142936)
class CreateEssentialSellingOrderItems < ActiveRecord::Migration
  def change
    create_table :essential_selling_order_items do |t|
      t.references :order, index: true
      t.integer :count, default: 1
      t.decimal :price, precision: 8, scale: 2
      t.timestamps
    end
  end
end
