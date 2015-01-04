class RegistrationsController < Devise::RegistrationsController
  before_filter :state, only: [:new, :create]
  before_filter :location, only: [:edit, :update]

  private

  def location
    @states ||= State.all
    @districts ||= current_user.state.districts
    @cities ||= current_user.district.cities
  end

  def state
    @states ||= State.all
    @districts = []
    @cities = []
  end

  def after_sign_up_path_for(*)
    users_path
  end

  def after_update_path_for(*)
    users_path
  end

  def sign_up_params
    params.require(:user).permit!
  end

  def account_update_params
    params.require(:user).permit!
  end
end
