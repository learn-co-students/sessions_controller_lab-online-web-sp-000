require 'rails_helper'

RSpec.describe "homepage", :type => :view do
  it "shows name when logged in successfully" do
    visit '/login'
    fill_in 'name', with: 'Steve'
    click_button 'login'
    expect(page.body).to include 'Steve'
  end
end