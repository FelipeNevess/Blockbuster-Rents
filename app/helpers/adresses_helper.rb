module AdressesHelper
  def adress_exists?(value)
    current_user.address[value] unless current_user.address.nil?
  end
end
