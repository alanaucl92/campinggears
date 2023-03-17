class GearPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve

      scope.all

      # if params[:query].present?
      #   scope.where(name: params[:query])
      #   # @movies = Movie.where(title: params[:query])
      # else
      #   scope.all
      # end
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def myitems?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def check?
    record.user != user
  end
end
