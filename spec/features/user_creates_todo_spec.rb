require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    visit root_path

    click_on "Create New ToDo"
    fill_in "Subject", with: "Upcase Trail - Test Driven Rails"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: "Upcase Trail - Test Driven Rails"
  end
end
