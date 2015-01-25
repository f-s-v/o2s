# This migration comes from essential_selling (originally 20141126102638)
class AddAllowPreorderToEssentialSellingProduct < ActiveRecord::Migration
  def change
    add_column :essential_selling_products, :allow_preorder, :boolean
  end
end
