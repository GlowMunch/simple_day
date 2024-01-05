require 'rails_helper'

RSpec.describe JournalEntry, type: :model do
  it { should belong_to(:journal) }
  it { should belong_to(:entry) }
end
