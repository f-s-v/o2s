# This migration comes from essential_selling (originally 20141123193849)
class CreateEssentialSellingCharachteristicOptionsProductVariants < ActiveRecord::Migration
  def change
    create_table :essential_selling_charachteristic_options_product_variants, id: false do |t|
      t.references :variant
      t.index 'variant_id', name: 'index_es_charachteristic_options_products_variants_on_product'
      t.references :option
      t.index 'option_id', name: 'index_es_charachteristic_options_product_variants_on_option'
    end
  end
end
