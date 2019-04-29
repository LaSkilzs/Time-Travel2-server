require 'byebug'

class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def show
    user = find_user
    if user
      render json: user, status: 200
    else
      render json: {error: "unable to find user"}, status: 404
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: 201 
    else
      render json: {error: "User was not created"}, status: 422
    end
  end

  def update
    if @user.update(user_params)
      render json: @user, status: 204
    else
      render json: { error: "Unable to update"}, status: :bad_request
    end
  end

  def destroy
    if @user.delete
      render json: @user, status: 204
    else
      render json: {error: "Something went wrong"}, status: 404
    end
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:username, :email)
  end
end
