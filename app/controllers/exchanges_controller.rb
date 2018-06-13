class ExchangesController < ApplicationController
  def index
  end

  def convert
    #params da chamada
    value = ExchangeService.new(params[:source_currency], params[:target_currency], params[:amount]).perform
    render json: {"value": value}
  end
end