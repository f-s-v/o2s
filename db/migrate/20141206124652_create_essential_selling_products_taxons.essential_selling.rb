# This migration comes from essential_selling (originally 20141126121344)
class CreateEssentialSellingProductsTaxons < ActiveRecord::Migration
  def change
    create_table :essential_selling_products_taxons, id: false do |t|
      t.references :product
      t.index 'product_id', name: 'index_es_products_taxons_on_product_id'
      t.references :taxon
      t.index 'taxon_id', name: 'index_es_products_taxons_on_taxon_id'
    end
  end
end
