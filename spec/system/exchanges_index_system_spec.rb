require 'rails_helper'

RSpec.describe "Exchange Currency Process", :type => :system, js: true do
  it "show exchanged value" do
    visit '/'
    within("#exchange_form") do
      select('EUR', from: 'source_currency')
      select('USD', from: 'target_currency')
      fill_in 'amount', with: rand(0..999)
    end
  end
end