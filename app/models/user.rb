class User < ApplicationRecord
  has_secure_password

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email_address, presence: true

  # The user's first name & last name concatenated
  #
  # @return [String]
  def full_name
    "#{first_name} #{last_name}"
  end

  # The user's first name & initial of last name concatenated
  #
  # @return [String]
  def short_name
    "#{first_name} #{last_name[0, 1]}"
  end

end
