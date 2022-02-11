class MenuMealPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      @scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def destroy?
    is_owner_or_admin
  end

  private

  def is_owner_or_admin
    user == record.restaurant.user || user.admin
  end
end
