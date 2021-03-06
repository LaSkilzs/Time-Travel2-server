class Api::V1::ApplicationsController < ApplicationController
  before_action :find_application, only: [:show, :update, :destroy]


  def index
    @total_pages = (Application.count/5).ceil
    params[:page] = 1 if params[:page].to_i < 1 || params[:page].to_i > @total_pages
    @applications = Application.all.page((params[:page]))
    @current_page = params[:page]
    
    pagination = {
      current_page: @current_page,
      last_page: @total_pages,
      next_page_url: "http://localhost:3000/api/v1/applications?page=#{@current_page.to_i + 1}",
      prev_page_url: "http://localhost:3000/api/v1/applications?page=#{@current_page.to_i - 1}"
    }

    render json: {applications: @applications, pagination: pagination}, status: 200
  end

  def show
    application = find_application
    if application
      render json: application, status: 200
    else
      render json: {error: "unable to find application"}, status: 404
    end
  end

  def create
    @application = Application.new(application_params)
    if @application.save
      render json: @application, status: 201 
    else
      render json: {error: "application was not created"}, status: 422
    end
  end

  def update
    if @application.update(application_params)
      render json: @application, status: 204
    else
      render json: { error: "Unable to update"}, status: :bad_request
    end
  end

  def destroy
    if @application.delete
      render json: @application, status: 204
    else
      render json: {error: "Something went wrong"}, status: 404
    end
  end

  private
  def find_application
    @application = Application.find(params[:id])
  end

  def application_params
    params.require(:application).permit(:job_title, :work_location, :status, :citizenship, :parent_union, :parent_trade, :entreprenuership, :work_with_others, :monotous_task, :work_life_balance, :work_environment, :too_many_hours, :app_score, :profile_id, :helpwanted_id)
  end
end
