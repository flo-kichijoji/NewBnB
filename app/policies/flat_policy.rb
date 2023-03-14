class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # user.admin? ? scope.all : scope.where(user: user)
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

    def update?
      record.user == user
    end

    def destroy?
      record.user == user
    end
  end
end
