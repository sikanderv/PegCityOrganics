class Customer < ApplicationRecord
  EMAIL_REGEX = /\A\b[A-Z0-9\.\_\%\-\+]+@(?:[A-Z0-9\-]+\.)+[A-Z]{2,6}\b\z/i
  PHONE_REGEX = /\A[+?\d\ \-x\(\)]{7,}\z/

  has_many :orders, dependent: :restrict_with_exception

  validates :email, presence: true, uniqueness: true, format: {with: EMAIL_REGEX}
  validates :phone, presence: true, format: {with: PHONE_REGEX}

  # All customers sorted by their ID description
  scope :ordered, -> { order(id: :desc)}

  # full name of the customer
  def full_name
    "#{first_name} #{last_name}"
  end
end
