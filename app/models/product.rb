class Product < ApplicationRecord

  has_many :attachments, as: :parent, dependent: :destroy, autosave: true
  belongs_to :product_category
  belongs_to :tax_rate
  has_many :order_items, dependent: :restrict_with_exception, as: :ordered_item
  has_many :stock_level_adjustments, dependent: :destroy, as: :item


  # Validations
  #  with_options if: proc { |p| p.parent.nil? } do |product|
  #     product.validate :has_at_least_one_product_category
  #     product.validates :description, presence: true
  #     product.validates :short_description, presence: true
  #   end
    validates :name, presence: true
    # validates :permalink, presence: true, uniqueness: true, permalink: true
    validates :sku, presence: true
    validates :weight, numericality: true
    validates :price, numericality: true
    validates :cost_price, numericality: true, allow_blank: true

    # All active products
   scope :active, -> { where(active: true) }

   # All featured products
   scope :featured, -> { where(featured: true) }
end
