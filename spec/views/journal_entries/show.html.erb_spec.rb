require 'rails_helper'

RSpec.describe "journal_entries/show", type: :view do
  before(:each) do
    @journal_entry = assign(:journal_entry, JournalEntry.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
