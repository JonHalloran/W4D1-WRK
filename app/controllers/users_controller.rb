class UsersController < ApplicationController

  def index
    render plain: "I am the index controller"
  end

  def show
    render json: params
  end

  def create
    render json: params
  end

  def delete
    render json: params
  end

  def update
    render json: params
  end
end
