require "test_helper"

feature "Queries show action" do
  scenario "attempting to veiw a query" do

    visit query_path(queries(:sky))

    page.must_have_content queries(:sky).question
    page.must_have_content queries(:sky).answer
  end

  scenario "viewing a queries contribution list" do
    visit query_path(queries(:sky))

    page.must_have_content users(:Joe).email
  end
end
