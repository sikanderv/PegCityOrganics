class ProductCategory < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :attachments, as: :parent, dependent: :destroy

  validates :name, presence: true
  # validates :permalink, presence: true, uniquness: {scope: :parent_id}, permalink: true
end
