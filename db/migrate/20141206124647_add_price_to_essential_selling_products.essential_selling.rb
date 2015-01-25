# This migration comes from essential_selling (originally 20141125095909)
class AddPriceToEssentialSellingProducts < ActiveRecord::Migration
  def change
    add_column :essential_selling_products, :price, :decimal, precision: 8, scale: 2
  end
end
