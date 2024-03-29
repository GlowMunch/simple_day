require 'rails_helper'

RSpec.describe User, type: :model do
  describe "associations" do
    it { should have_many(:journals) }
    it { should have_many(:entries).through(:journals) }
  end
end
