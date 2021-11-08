class Api::V1::TeasController < ApplicationController
  def index
    teas = TeaFacade.format_all_teas
    render json: TeaSerializer.new(teas).serializable_hash, status: :ok
  end
end
