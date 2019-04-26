require 'rails_helper'

RSpec.describe 'home page' do
  context 'when user is not logged in' do
    it 'should display the login link' do
      visit root_path
      expect(page).to have_button("login")
    end

    it 'should redirect to root path if user entered blank username' do
      visit root_path
      click_button 'login'
      expect(page).to have_button("login")
    end
  end

  context 'when a user is logged in' do
    it 'should display the user name' do
      visit root_path
      fill_in 'name', with: "Praise the Sun!"
      click_button 'login'
      expect(page).to have_content 'Hi, Praise the Sun!'
    end

    it 'should display the logout link' do
      visit root_path
      fill_in 'name', with: "Praise the Sun!"
      click_button 'login'
      expect(page).to have_button("logout")
    end
  end

end
