class Journal < ApplicationRecord
  has_many :entries, dependent: :destroy
  belongs_to :user
  validates :title, presence: true
end
