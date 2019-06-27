require 'rails_helper'
require 'capybara'
require 'capybara/rails'

RSpec.feature "User Login and Logout", type: :feature do
  describe 'login' do

    it "shows a login link if the user is logged out" do
      visit root_path
      expect(page).to have_content('login')
    end

    it "greets the user if they're logged in" do
      visit login_path
      fill_in 'name', with: 'Bob'
      click_button 'login'
      visit root_path
      expect(page).to have_content("Hi, Bob")
    end
  end
end