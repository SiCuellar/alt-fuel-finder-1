require 'rails_helper'

describe "Station Search Result" do
  it "exist" do
    station_search_result = StationSearch.new(80203)
    expect(station_search_result).to be_a(StationSearch)
  end

end
