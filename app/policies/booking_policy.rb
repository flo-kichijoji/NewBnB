class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # user.admin? ? scope.all : scope.where(user: user)
    end
  end

  def new?
    true
  end

  def show?
    true
  end

  def create?
    true
  end
  
end