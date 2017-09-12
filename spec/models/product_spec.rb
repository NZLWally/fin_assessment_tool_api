require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "attributes" do
    it { is_expected.to respond_to :name }
  end

  describe "relationships" do
    it { should belong_to(:category) }
  end
end
