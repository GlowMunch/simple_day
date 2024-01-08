class RemoveJournalEntries < ActiveRecord::Migration[7.0]
  def change
    drop_table :journal_entries
  end
end
