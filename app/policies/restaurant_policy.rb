class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      @scope.all
    end
  end

  def new?
    true
  end

  def index?
    true
  end

  def create?
    true
  end

  def edit?
    is_owner_or_admin
  end

  def update?
    is_owner_or_admin
  end

  def show?
    true
  end

  def destroy?
    is_owner_or_admin
  end

  private

  def is_owner_or_admin
    user == record.user || user.admin
  end
end
