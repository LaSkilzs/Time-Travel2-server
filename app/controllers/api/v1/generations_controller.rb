class Api::V1::GenerationsController < ApplicationController

  def index
    @generations = Generation.all
    render json: @generations, status: 200
  end
end
