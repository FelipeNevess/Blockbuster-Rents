class AdressesController < ApplicationController
  include OptionsCategories

  before_action :set_movie_category

  def new
    @address = Address.new
  end

  def create
    create_address? if current_user.address.nil?

    update_address
  end

  private

  def update_address
    @address = Address.find(current_user.address.id)
    redirect_to new_adress_path, notice: 'Endereço atualizado com sucesso.' if @address.update(address_params)
  end

  def create_address
    @address = Address.new(address_params.merge(user: current_user))

    if @address.save
      redirect_to new_adress_path, notice: 'Endereço criado com sucesso.'
    else
      flash.now[:alert] = @address.errors.full_messages.to_sentence
      render :new
    end
  end

  def address_params
    params.require(:address).permit(:zip_code, :city, :state, :street, :number, :complement)
  end
end
