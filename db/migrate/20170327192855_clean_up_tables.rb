class CleanUpTables < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :tax_rate_id, :integer
    remove_column :products, :permalink, :string
    remove_column :products, :short_description, :text
    remove_column :products, :permalink, :string
    remove_column :products, :in_the_box, :text
    remove_column :products, :default, :boolean
    remove_column :product_categories, :permalink, :string
  end
end
