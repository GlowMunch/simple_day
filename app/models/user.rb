class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, length: { minimum: 4 }

  has_many :journals
  has_many :journal_entries, through: :journals
  has_many :entries, through: :journal_entries

  enum role: %w(default manager admin)
end
