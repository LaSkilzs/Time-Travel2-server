class Api::V1::IndustriesController < ApplicationController


  def index
    @total_pages = (Industry.count/5).ceil
    params[:page] = 1 if params[:page].to_i < 1 || params[:page].to_i > @total_pages
    @industries = Industry.all.page((params[:page]))
    @current_page = params[:page]
    
    pagination = {
      current_page: @current_page,
      last_page: @total_pages,
      next_page_url: "http://localhost:3000/api/v1/industries?page=#{@current_page.to_i + 1}",
      prev_page_url: "http://localhost:3000/api/v1/industries?page=#{@current_page.to_i - 1}"
    }

    render json: {industries: @industries, pagination: pagination}, status: 200
  end
  
  def filtered
    @industry = Industry.find(params[:industry_id])
    @total_pages = (@industry.jobs.count/5).ceil
    params[:page] = 1 if params[:page].to_i < 1 || params[:page].to_i > @total_pages
    @jobs = @industry.jobs.page((params[:page]))
 
    pagination = {
      current_page: @current_page,
      last_page: @total_pages,
      next_page_url: "http://localhost:3000/api/v1/industries?page=#{@current_page.to_i + 1}",
      prev_page_url: "http://localhost:3000/api/v1/industries?page=#{@current_page.to_i - 1}"
    }

    render json: {jobs: @jobs,industry: @industry, pagination: pagination}, status: 200
  end

  def show
    render json: Industry.find(params[:id]) 
  end
end
