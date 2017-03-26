class DeliveryService < ApplicationRecord

  #Validations
  validates :name, presence: true
  validates :courier, presence: true

  # Orders assigned to this delivery service
  has_many :order, dependent: :restrict_with_exception

  # Prices for the different levels of service within this delivery service
  has_many :delivery_service_prices, dependent: :destroy

  # All active delivery services
  scope :active, -> { where(active: true)}
end
