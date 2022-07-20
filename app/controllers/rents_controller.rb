class RentsController < ApplicationController
  before_action :set_rents, only: :destroy

  def create
    like = Rent.new(user_id: current_user.id, movie_id: rent_params[:movie_id])

    if current_user.rents.count >= 3
      render json: { successful: false }
    elsif like.save
      render json: { successful: true }
    else
      render json: { successful: false }
    end
  end

  def destroy
    render json: { successful: @rent.destroy }
  end

  private

  def set_rents
    @rent = current_user.rents.find(params[:id])
  end

  def rent_params
    params.require(:rent).permit(:movie_id)
  end
end
