require "test_helper"

feature "Signing Up" do
  scenario "site visitor on the main page" do
    visit root_path

    click_on "Sign Up"

    fill_in "Email", with: "user5@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"

    click_on "Sign up"

    page.must_have_content "Welcome! You have signed up successfully."
  end
end
