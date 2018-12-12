require 'rails_helper'

feature "User can visit root page" do
  scenario "and fill in search form " do
    visit "/"
    # When I visit "/"

    fill_in :q, with: 80203
    click_button("Locate")

    expect(current_path).to eq(search_path)

    expect(page)

    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
