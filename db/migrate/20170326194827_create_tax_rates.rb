class CreateTaxRates < ActiveRecord::Migration[5.0]
  def change
    create_table :tax_rates do |t|
      t.string :name
      t.decimal :rate, precision: 8, scale: 2
      t.text :country_ids

      t.timestamps
    end
  end
end
