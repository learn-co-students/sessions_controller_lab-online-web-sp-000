require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  it "displays a login form" do
    visit login_path
    expect(page).to have_field('name')
    expect(page).to have_button('login')
  end
end
