# This migration comes from essential_selling (originally 20141126160709)
class CreateEssentialSellingProductPhotos < ActiveRecord::Migration
  def change
    create_table :essential_selling_product_photos do |t|
      t.string :url
      t.references :product, index: true

      t.timestamps
    end
  end
end
