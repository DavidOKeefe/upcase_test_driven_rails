require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in
    create_todo "Upcase Trail - Test Driven Rails"
    expect(page).to display_todo "Upcase Trail - Test Driven Rails"
  end
end
