class UsersController < ApplicationController
  def update_name
    if current_user.update(user_params)
      redirect_to accounts_register_path, notice: 'Nome foi atualizado com sucesso.'
    else
      flash.now[:alert] = current_user.errors.full_messages.to_sentence

      redirect_to accounts_register_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
