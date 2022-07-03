class UsersController < ApplicationController
  def update_name
    if current_user.update(user_params)
      redirect_to accounts_register_path, notice: 'Nome foi atualizado com sucesso.'
    else
      flash.now[:alert] = current_user.errors.full_messages.to_sentence

      redirect_to accounts_register_path
    end
  end

  def update_password
    if current_user.update(user_params)
      redirect_to root_path, notice: 'Senha atualizada com sucesso.'
    else
      flash.now[:alert] = current_user.errors.full_messages.to_sentence

      redirect_to accounts_register_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
