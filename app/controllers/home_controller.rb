class HomeController < ApplicationController
  skip_before_filter :authenticate_user!

  def districts
    @districts ||= State.where(id: params[:id]).take.districts
  end

  def cities
    @cities ||= District.where(id: params[:id]).take.cities
  end

  def create
    @donars ||= User.search(params[:donar])
    render 'donars'
  end

  def index
    @states ||= State.all
    @districts = []
    @cities = []
  end
end
