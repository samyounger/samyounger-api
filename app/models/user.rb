class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_one_attached :avatar

  # Validations
  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true

  def full_name
    self.first_name + " " + self.last_name
  end
end
