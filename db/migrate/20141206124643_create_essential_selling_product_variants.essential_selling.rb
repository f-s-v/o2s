# This migration comes from essential_selling (originally 20141123180015)
class CreateEssentialSellingProductVariants < ActiveRecord::Migration
  def change
    create_table :essential_selling_product_variants do |t|
      t.integer :in_stock, default: 0
      t.references :product, index: true

      t.timestamps
    end
  end
end
