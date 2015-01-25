# This migration comes from essential_selling (originally 20141123152007)
class CreateEssentialSellingProducts < ActiveRecord::Migration
  def up
    create_table :essential_selling_products do |t|
      t.string :slug, index: true
      t.boolean :published, default: false
      t.timestamps
    end
    EssentialSelling::Product.create_translation_table!(title: :string, info: :text)
  end
  
  def down
    drop_table :essential_selling_products
    EssentialSelling::Product.drop_translation_table!
  end
end
