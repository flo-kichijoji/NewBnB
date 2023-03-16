class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # user.admin? ? scope.all : scope.where(user: user)
    end
  end

  def show?
    true
  end
end