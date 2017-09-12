require 'rails_helper'

RSpec.describe "FinancialMeasures API" do
  context "GET /api/v1/financial_measures" do
    it "returns the profit and loss statement for all customers and all products (no filters)" do
      sales = create(:sale)
      discounts = create(:discount, sale_id: sales.id)
      cogs = create(:cost_of_goods_sold, sale_id: sales.id)
      op_expenses = create(:operating_expense, sale_id: sales.id)

      get "/api/v1/financial_measures"

      expect(response).to be_success

      raw_data = JSON.parse(response.body)
      binding.pry
    end
  end
end