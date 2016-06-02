require "rails_helper"

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    click_on "Create New ToDo"
    fill_in "Subject", with: "More Cowbell"
    click_on "Submit"

    click_on "Mark complete"

    expect(page).to have_css '.todos li.completed', text: "More Cowbell"
  end
end
