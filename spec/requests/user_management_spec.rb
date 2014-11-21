require 'rails_helper'

feature "User Sign Up" do
  scenario "User creates a new widget" do
    user = build(:user)
    visit login_path
    fill_in "Username", :with => user.username
    fill_in "Password", :with => user.password
    click_button "Sign Up"
    page.should have_content("You account was successfully created")
    page.should have_content("bunny")
  end
end