class Journal < ApplicationRecord
  has_many :journal_entries
  has_many :entries, through: :journal_entries
  belongs_to :user
end
