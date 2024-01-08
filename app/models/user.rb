class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, length: { minimum: 4 }

  has_many :journals , dependent: :destroy
  has_many :entries, through: :journals

  enum role: %w(default manager admin)
end
