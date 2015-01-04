class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities ||= City.all
    authorize! :read, @cities
  end

  def new
    @city = City.new
    @districts ||= District.all
    authorize! :create, @city
  end

  def create
    @districts ||= District.all
    @city = City.new(city_params)
    @city.save ? (redirect_to cities_path) : (render 'new')
  end

  def edit
    @districts ||= District.all
    authorize! :update, @city
  end

  def update
    @city.update(city_params)
    redirect_to cities_path
  end

  def destroy
    authorize! :delete, @city
    @city.destroy
    cities_path
  end

  private

  def set_city
    @city ||= City.shodh(params[:id])
  end

  def city_params
    params.require(:city).permit(:name, :district_id)
  end
end
