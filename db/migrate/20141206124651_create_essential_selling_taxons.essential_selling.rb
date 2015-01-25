# This migration comes from essential_selling (originally 20141126114718)
class CreateEssentialSellingTaxons < ActiveRecord::Migration
  def up
    create_table :essential_selling_taxons do |t|
      t.references :parent, index: true

      t.timestamps
    end
    EssentialSelling::Taxon.create_translation_table!(title: :string)
  end
  
  def down
    drop_table :essential_selling_taxons
    EssentialSelling::Taxon.drop_translation_table!
  end
end
