require 'rails_helper'

RSpec.describe "application/hello.html.erb", type: :view do
  describe "hello" do
    it "greets the user" do
      session[:name] = "Kaela"

      render
      rendered.should have_content("Hi, Kaela")
    end
  end
end