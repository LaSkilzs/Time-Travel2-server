class Api::V1::JobsController < ApplicationController
  before_action :find_job, only: [:show, :update]



  def index
    @total_pages = (Job.count/5).ceil
    params[:page] = 1 if params[:page].to_i < 1 || params[:page].to_i > @total_pages
    @jobs = Job.all.page((params[:page]))
    @current_page = params[:page]
    
    pagination = {
      current_page: @current_page,
      last_page: @total_pages,
      next_page_url: "http://localhost:3000/api/v1/jobs?page=#{@current_page.to_i + 1}",
      prev_page_url: "http://localhost:3000/api/v1/jobs?page=#{@current_page.to_i - 1}"
    }

    render json: {jobs: @jobs, pagination: pagination}, status: 200
  end



  def show
    if @job
      render json: @job, status: 200
    else
      render json: {error: "unable to find job"}, status: 404
    end
  end

  def update
    if @job.update(job_params)
      render json: @job, status: 204
    else
      render json: { error: "Unable to update"}, status: :bad_request
    end
  end

  private
  def find_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:job_openings)
  end
end
