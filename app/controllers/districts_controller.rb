class DistrictsController < ApplicationController
  before_action :set_district, only: [:show, :edit, :update, :destroy]

  def index
    @districts ||= District.all
    authorize! :read, @districts
  end

  def new
    @district = District.new
    @states ||= State.all
    authorize! :create, @district
  end

  def create
    @district = District.new(district_params)
    @district.save
    redirect_to districts_path
  end

  def edit
    @states ||= State.all
    authorize! :update, @district
  end

  def update
    @district.update(district_params)
    redirect_to districts_path
  end

  def destroy
    authorize! :delete, @district
    @district.destroy
    redirect_to districts_path
  end

  private

  def set_district
    @district = District.shodh(params[:id])
  end

  def district_params
    params.require(:district).permit(:name, :state_id)
  end
end
