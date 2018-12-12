class StationSearch < ApplicationRecord
  def initialize(zip)
    @zip = zip
  end
end
