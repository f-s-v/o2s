# This migration comes from essential_selling (originally 20141123191003)
class CreateEssentialSellingCharachteristicOptions < ActiveRecord::Migration
  def up
    create_table :essential_selling_charachteristic_options do |t|
      t.references :charachteristic
      t.index 'charachteristic_id', name: 'index_es_charachteristic_options_on_charachteristic_id'
      t.timestamps
    end
    EssentialSelling::Charachteristic::Option.create_translation_table!(title: :string)
  end
  
  def down
    drop_table :essential_selling_charachteristic_options
    EssentialSelling::Charachteristic::Option.drop_translation_table!
  end
end
