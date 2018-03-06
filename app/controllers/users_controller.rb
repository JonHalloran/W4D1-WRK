class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    # render json: params
    render json: User.find(params[:id])
  end

  def create
    user = User.new(params_permit)
    # replace the `user_attributes_here` with the actual attribute keys
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 418
    end
  end

  def destroy
    user = User.destroy(params[:id])
    render json: User.destroy(params[:id])

  end

  def update
    user = User.find(params[:id])

    user.update(params_permit)
    render json: user
  end

  private

  def params_permit
    params.require(:user).permit(:username)
  end
end
