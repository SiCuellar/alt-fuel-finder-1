class SearchController < ApplicationController
  def index
    @stations = StationSearch.new(params[:stations])
  end
end
