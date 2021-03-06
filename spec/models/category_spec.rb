require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "attributes" do
    it { is_expected.to respond_to :name }
  end

  describe "relationships" do
    it { should have_many(:products) }
  end
end
