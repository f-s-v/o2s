# This migration comes from essential_selling (originally 20141206124455)
class CreateEssentialSellingOrderItemsProductExtras < ActiveRecord::Migration
  def change
    create_table :essential_selling_order_items_product_extras, id: false do |t|
      t.references :order, index: true
      t.references :extra, index: true
    end
  end
end
