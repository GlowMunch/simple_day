class CreateJournalEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :journal_entries do |t|
      t.integer :journal_id
      t.integer :entry_id
      t.timestamps
    end
  end
end
