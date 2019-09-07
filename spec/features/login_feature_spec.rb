require 'rails_helper'


describe "Login", type: :feature do

  describe "/login" do
    it "Goes to login page" do
      visit login_path
      expect(page).to have_content("Login")
    end

    it "Logs in user" do
      visit login_path
      fill_in :name, with: "Joe"
      find('input[value = "login"]').click
      expect(page).to have_content("Hi, Joe")
    end
  end
end
