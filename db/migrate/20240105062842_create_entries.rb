class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :title
      t.text :content
      t.datetime :date
      t.integer :journal_id
      t.timestamps null: false
    end
  end
end
