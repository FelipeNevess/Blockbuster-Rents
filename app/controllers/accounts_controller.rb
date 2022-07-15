class AccountsController < ApplicationController
  include OptionsCategories

  before_action :set_movie_category

  def register; end

  def change_password; end

  def favorites; end
end
