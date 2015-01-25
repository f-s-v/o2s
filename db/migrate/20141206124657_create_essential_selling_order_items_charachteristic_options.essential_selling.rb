# This migration comes from essential_selling (originally 20141204154130)
class CreateEssentialSellingOrderItemsCharachteristicOptions < ActiveRecord::Migration
  def change
    create_table :essential_selling_order_items_charachteristic_options, id: false do |t|
      t.references :item
      t.index :item_id, name: :index_es_items_options_on_item_id
      t.references :option
      t.index :option_id, name: :index_es_items_options_on_option_id
    end
  end
end
