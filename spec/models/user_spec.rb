require 'rails_helper'

RSpec.describe User, type: :model do
  describe "associations" do
    it { should have_many(:journals) }
    it { should have_many(:journal_entries).through(:journals) }
    it { should have_many(:entries).through(:journal_entries) }
  end
end
