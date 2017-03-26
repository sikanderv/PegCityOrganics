class ProductAttribute < ApplicationRecord
  # Validations
  validates :key, presence: true

  # Belongs to
  belongs_to :product

  # Searchable products
  scope :searchable, -> { where(searchable: true)}

  # All publicly accessible products
  scope :publicly_accessible, -> {where(public: true)}
  
end
