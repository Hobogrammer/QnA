require "test_helper"

feature "EditingAQuery" do
  scenario "editing/answering a query as a signed in user" do
    sign_in
    visit queries_path

    page.find("a[href='/queries/#{queries(:sky).id}/edit']").click

    fill_in "Answer", with: "Edit, light physics"

    click_on "Update Query"

    page.must_have_content "Edit, light physics"
  end

  scenario "editing a query as an unauthorized user" do
  end
end
