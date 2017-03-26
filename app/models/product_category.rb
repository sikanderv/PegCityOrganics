class ProductCategory < ApplicationRecord
  has_many :products
  has_many :attachments, as: :parent, dependent: :destroy

  validates :name, presence: true
  # validates :permalink, presence: true, uniquness: {scope: :parent_id}, permalink: true
end
