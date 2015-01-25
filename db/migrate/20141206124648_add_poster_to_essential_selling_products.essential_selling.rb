# This migration comes from essential_selling (originally 20141125104727)
class AddPosterToEssentialSellingProducts < ActiveRecord::Migration
  def change
    add_column :essential_selling_products, :poster, :string
  end
end
