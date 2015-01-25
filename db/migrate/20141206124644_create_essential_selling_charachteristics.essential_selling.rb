# This migration comes from essential_selling (originally 20141123184236)
class CreateEssentialSellingCharachteristics < ActiveRecord::Migration
  def up
    create_table :essential_selling_charachteristics do |t|
      t.timestamps
    end
    EssentialSelling::Charachteristic.create_translation_table!(title: :string)
  end
  
  def down
    drop_table :essential_selling_charachteristics
    EssentialSelling::Charachteristic.drop_translation_table!
  end
end
