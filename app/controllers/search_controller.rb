class SearchController < ApplicationController
  def index
    total_result = StationSearch.new(params[:total_result])

    @conn = Faraday.new(url: "https://www.nrel.gov/") do |faraday|
      faraday.headers["X-API-KEY"] = ["nrel_key"]
      faraday.adapter Faraday.default_adapter
    end
    binding.pry
    response = @conn.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CA&limit=2&api_key=#{[["nrel_key"]]}&format=JSON")

    @stations = JSON.parse(response.body, symbolize_names: true)[:results]

  end
end
