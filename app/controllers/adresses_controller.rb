class AdressesController < ApplicationController
  include OptionsCategories

  before_action :set_movie_category
  before_action :set_movie_popular

  def new
    @address = Address.new
  end

  def create
    if current_user.address.nil?
      create_address
    else
      edit
    end
  end

  def edit
    @address = Address.find(current_user.address.id)
    if @address.update(address_params)
      redirect_to new_adress_path, notice: 'Endereço atualizado com sucesso.'
    else
      flash.now[:alert] = @address.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  def create_address
    @address = Address.new(address_params.merge(user: current_user))

    if @address.save
      render :new, notice: 'Endereço criado com sucesso.'
    else
      flash.now[:alert] = @address.errors.full_messages.to_sentence
      render :new
    end
  end

  def address_params
    params.require(:address).permit(:zip_code, :city, :state, :street, :number, :complement)
  end
end
