require "rails_helper"

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in
    create_todo "Drink Coffee"
    click_on "Mark complete"
    click_on "Mark incomplete"
    expect(page).not_to display_completed_todo "Drink Coffee"
    expect(page).to display_todo "Drink Coffee"
  end
end
