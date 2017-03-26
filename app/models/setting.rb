class Setting < ApplicationRecord
  # Validations
  validates :key, presence: true, uniqueness: true
  validates :value, presence: true
  validates :value_type, presence: true
end
