class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :journals
  has_many :journal_entries, through: :journals
  has_many :entries, through: :journal_entries
end
