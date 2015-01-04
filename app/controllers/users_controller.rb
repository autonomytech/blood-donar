class UsersController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:district, :city]

  def district
    @districts ||= State.where(id: params[:id]).take.districts
  end

  def city
    @cities ||= District.where(id: params[:id]).take.cities
  end

  def index
    redirect_to dashboard_users_path if current_user.id != 1
  end

  def dashboard
    @user = current_user
  end
end
