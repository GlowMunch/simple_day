class JournalEntry < ApplicationRecord
  belongs_to :journal
  belongs_to :entry
end
