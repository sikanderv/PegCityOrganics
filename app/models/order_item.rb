class OrderItem < ApplicationRecord
  # Associated order
  belongs_to :order, touch: true, inverse_of: :order_items

  # Item that has been ordered
  belongs_to :ordered_item, polymorphic: true

  has_many :stock_level_adjustments # as: :parent, dependent: :nullify

  #Validations
  validates :quantity, numericality: true
  validates :ordered_item, presence: true

  # validate do
  #   errors.add :quantity, :too_high_quanity unless in_stock?
  # end
end
