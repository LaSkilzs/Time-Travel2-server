class Api::V1::IndustriesController < ApplicationController


  def index
    @industries = Industry.all
    render json: @industries, status: 200
  end

  def show
    render json: Industry.find(params[:id]) 
  end
end
