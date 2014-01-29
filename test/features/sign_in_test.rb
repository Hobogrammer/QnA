require "test_helper"

feature "Sign in form" do
  scenario "user wants to login" do
    sign_in

    page.must_have_content "Signed in as: #{users(:Joe).email}"
    page.wont_have_content "Sign Up | Sign In"
  end
end
