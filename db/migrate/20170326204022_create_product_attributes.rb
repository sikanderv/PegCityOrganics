class CreateProductAttributes < ActiveRecord::Migration[5.0]
  def change
    create_table :product_attributes do |t|

       t.integer  :product_id
       t.string   :key
       t.string   :value
       t.integer  :position,   default: 1
       t.boolean  :searchable, default: true
       t.boolean  :public, default: true

       t.timestamps
    end
  end
end
