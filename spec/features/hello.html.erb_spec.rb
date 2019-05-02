require 'rails_helper'


RSpec.describe "application/hello.html.erb", :type => :view do

    it "greets user" do
        visit login_path
        fill_in 'name', with: 'name'
        click_button 'login'
        expect(page).to have_content("Hi, name.")
    end

    it "has a logout button" do
        visit login_path
        fill_in 'name', with: 'name'
        click_button 'login'
        expect(page).to have_button("logout")
    end
end