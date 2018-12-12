require 'rails_helper'

describe "User can visit root page" do
  it "and fill in search form " do
    visit "/"
    # When I visit "/"

    fill_in :q, with: 80203
    click_button("Locate")

    expect(current_path).to eq(search_path)

    expect(page).to have_content(station_1.name)
    expect(page).to have_content(station_1.address)
    expect(page).to have_content(station_1.fuel)
    expect(page).to have_content(station_1.distance)
    expect(page).to have_content(station_1.atime)


    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
