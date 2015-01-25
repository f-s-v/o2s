# This migration comes from essential_selling (originally 20141125134356)
class CreateEssentialSellingProductExtras < ActiveRecord::Migration
  def up
    create_table :essential_selling_product_extras do |t|
      t.decimal :adds_value, precision: 8, scale: 2
      t.references :product
      t.index :product_id, name: "index_es_product_extras_on_product_id"

      t.timestamps
    end
    EssentialSelling::Product::Extra.create_translation_table!(title: :string, info: :text)
  end
  
  def down
    drop_table :essential_selling_product_extras
    EssentialSelling::Product::Extra.drop_translation_table!
  end
end
