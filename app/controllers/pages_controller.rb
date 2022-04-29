class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def profile
    authorize @page
    current_user
  end
end
