class PagesPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
     # user.admin? ? scope.all : scope.where(user: user)
    end
  end
end