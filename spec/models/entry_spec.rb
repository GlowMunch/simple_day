require 'rails_helper'

RSpec.describe Entry, type: :model do
  describe 'validations' do
    it { should have_many(:journal_entries) }
    it { should have_many(:journals).through(:journal_entries) }
    it { should have_many(:users).through(:journals) }
  end
end
