class Api::V1::TeasController < ApplicationController
  def index
    teas = TeaFacade.format_all_teas
    json_response(TeaSerializer.new(teas).serializable_hash)
  end
end
