# This migration comes from essential_selling (originally 20141126161403)
class CreateEssentialSellingCharachteristicOptionsProductPhotos < ActiveRecord::Migration
  def change
    create_table :essential_selling_charachteristic_options_product_photos, id: false do |t|
      t.references :photo
      t.index :photo_id, name: :es_charachteristic_options_photos_on_photo_id
      t.references :option
      t.index :option_id, name: :es_charachteristic_options_photos_on_option_id
    end
  end
end
