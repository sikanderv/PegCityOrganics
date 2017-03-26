class Order < ApplicationRecord
  EMAIL_REGEX = /\A\b[A-Z0-9\.\_\%\-\+]+@(?:[A-Z0-9\-]+\.)+[A-Z]{2,6}\b\z/i
  PHONE_REGEX = /\A[+?\d\ \-x\(\)]{7,}\z/

  has_many :order_items, dependent: :destroy, inverse_of: :order
  accepts_nested_attributes_for :order_items, allow_destroy: true, reject_if: proc { |a| a['ordered_item_id'].blank? }

  # All products that are part of this order (through order_items)
  has_many :products, through: :order_items

  # Belongs to a customer
  belongs_to :customer
  has_many :addresses, through: :customers

  #Validations
  # validates :token, presence: true
end
