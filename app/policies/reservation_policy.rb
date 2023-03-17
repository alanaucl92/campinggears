class ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      # scope.where(user: user)
      scope.all
    end
  end
  def create?
    true
  end

  def update?
    record.user == user
  end

  def mygear?
    true
  end

  def confirm?
    true
  end

end
