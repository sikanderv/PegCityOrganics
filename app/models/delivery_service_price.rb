class DeliveryServicePrice < ApplicationRecord
    # The delvery service which this price belongs to
    belongs_to :delivery_service
    # Tax rate to be applied
    belongs_to :tax_rate

    # Validations
    validates :code, presence: true
    validates :price, numericality: true
    validates :cost_price, numericality: true, allow_blank: true
    validates :min_weight, numericality: true
    validates :max_weight, numericality: true

    # All prices sorted by price ascending
    scope :ordered, -> { order(price: :asc) }
end
