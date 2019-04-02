class Api::V1::ProfilesController < ApplicationController
  before_action :find_profile, only: [:show, :update, :destroy]


  def index
    @profiles = Profile.all
    render json: @profiles, status: 200
  end

  def show
    profile = find_profile
    if profile
      render json: profile, status: 200
    else
      render json: {error: "unable to find profile"}, status: 404
    end
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      render json: @profile, status: 201 
    else
      render json: {error: "profile was not created"}, status: 422
    end
  end

  def update
    if @profile.update(profile_params)
      render json: @profile, status: 204
    else
      render json: { error: "Unable to update"}, status: :bad_request
    end
  end

  def destroy
    if @profile.delete
      render json: @profile, status: 204
    else
      render json: {error: "Something went wrong"}, status: 404
    end
  end

  private
  def find_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.permit(:name, :age, :gender, :ethnicity, :religion, :marital_status, :education, :available_for_work, :experience, :avatar, :trade, :user_id)
  end
end
