class CreateDeliveryServicePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :delivery_service_prices do |t|
      t.integer :delivery_service_id
      t.string :code
      t.decimal :price
      t.decimal :cost_price
      t.integer :tax_rate_id
      t.decimal :min_weight
      t.decimal :max_weight
      t.text :country_ids

      t.timestamps
    end
  end
end
