class UsersController < ApplicationController
  def edit; end

  def update
    if current_user.update(user_params)
      redirect_to root_path, notice: 'Seu perfil foi atualizado com sucesso.'
    else
      flash.now[:alert] = current_user.errors.full_messages.to_sentence
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :avatar)
  end
end
