# This migration comes from essential_selling (originally 20141128170217)
class CreateEssentialSellingOrders < ActiveRecord::Migration
  def change
    create_table :essential_selling_orders do |t|
      t.string :shipping_country_code
      t.index :shipping_country_code
      t.string :shipping_name
      t.string :shipping_address_line1
      t.string :shipping_address_line2
      t.string :shipping_city
      t.string :shipping_state
      t.string :shipping_zip
      t.string :phone_number
      
      t.timestamps
    end
  end
end
