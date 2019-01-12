require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  describe "new" do
    it "has login form" do
      render
      rendered.should have_content("Name:")
    end
  end
end
