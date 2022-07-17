class UsersController < ApplicationController
  include OptionsCategories

  before_action :set_movie_category

  def edit; end

  def update
    if current_user.update(users_params)
      redirect_to accounts_register_path, notice: "#{users_params.keys[0]} foi atualizado com sucesso."
    else
      flash.now[:alert] = current_user.errors.full_messages.to_sentence
      render :edit
    end
  end

  def update_name
    update
  end

  def update_password
    update
  end

  private

  def users_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
