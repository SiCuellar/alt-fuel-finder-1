class SearchController < ApplicationController
  def index
    @stations = StationSearchResult.new(params[:station])
  end
end
