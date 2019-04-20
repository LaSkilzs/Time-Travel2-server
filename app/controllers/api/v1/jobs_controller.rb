class Api::V1::JobsController < ApplicationController
  after_action only: [:index] { set_pagination_header(:jobs) }
  before_action :find_job, only: [:show, :update]


  def index
    @jobs = Job.all.page((params[:page] ? params[:page].to_i : 1))
    render json: @jobs, status: 200
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
