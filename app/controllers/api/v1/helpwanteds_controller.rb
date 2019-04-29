class Api::V1::HelpwantedsController < ApplicationController
  before_action :find_helpwanted, only: [:show, :update, :destroy]


  def index
    @total_pages = (Helpwanted.count/5).ceil
    params[:page] = 1 if params[:page].to_i < 1 || params[:page].to_i > @total_pages
    @helpwanteds = Helpwanted.all.page((params[:page]))
    @current_page = params[:page]
    
    pagination = {
      current_page: @current_page,
      last_page: @total_pages,
      next_page_url: "http://localhost:3000/api/v1/helpwanteds?page=#{@current_page.to_i + 1}",
      prev_page_url: "http://localhost:3000/api/v1/helpwanteds?page=#{@current_page.to_i - 1}"
    }

    render json: {helpwanteds: @helpwanteds, pagination: pagination}, status: 200
  end
 
  def show
    helpwanted = find_helpwanted
    if helpwanted
      render json: helpwanted, status: 200
    else
      render json: {error: "unable to find helpwanted"}, status: 404
    end
  end

  def create
    @helpwanted = Helpwanted.new(helpwanted_params)
    if @helpwanted.save
      render json: @helpwanted, status: 201 
    else
      render json: {error: "helpwanted was not created"}, status: 422
    end
  end

  def update
    if @helpwanted.update(helpwanted_params)
      render json: @helpwanted, status: 204
    else
      render json: { error: "Unable to update"}, status: :bad_request
    end
  end

  def destroy
    if @helpwanted.delete
      render json: @helpwanted, status: 204
    else
      render json: {error: "Something went wrong"}, status: 404
    end
  end

  private
  def find_helpwanted
    @helpwanted = Helpwanted.find(params[:id])
  end

  def helpwanted_params
    params.permit(:location, :image, :wage_per_week, :housing_offered, :female, :job_id)
  end
end
