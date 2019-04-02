class Api::V1::FunfactsController < ApplicationController

  def index
    @funfacts = FunFact.all
    render json: @funfacts, status: 200
  end
end
