require "test_helper"

feature "creating a query" do
  scenario "not yet authenticated user on root" do
    sign_in

    visit new_query_path

    fill_in "Question", with: "Why is the sky blue?"

    click_on "Create Query"

    page.must_have_content "Query was successfully created."
    page.must_have_content "Why is the sky blue?"
  end
end
