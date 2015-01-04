class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, :all if user.id == 1
  end
end
