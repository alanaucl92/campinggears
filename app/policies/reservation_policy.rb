class ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      scope.where(user: user)
    end
  end
  def create?
    true
  end

  def mygear?
    true
  end

end
