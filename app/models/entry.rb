class Entry < ApplicationRecord
  has_many :journal_entries
  has_many :journals, through: :journal_entries
  has_many :users, through: :journals
end
