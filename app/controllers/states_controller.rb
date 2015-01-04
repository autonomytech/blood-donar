class StatesController < ApplicationController
  before_action :set_state, only: [:show, :edit, :update, :destroy]

  def index
    @states ||= State.all
    authorize! :read, @states
  end

  def new
    @state = State.new
    authorize! :create, @state
  end

  def create
    @state = State.new(state_params)
    @state.save
    redirect_to states_path
  end

  def edit
    authorize! :update, @state
  end

  def update
    @state.update(state_params)
    redirect_to states_path
  end

  def destroy
    authorize! :delete, @state
    @state.destroy
    redirect_to states_path
  end

  private

  def set_state
    @state = State.shodh(params[:id])
  end

  def state_params
    params.require(:state).permit(:name)
  end
end
