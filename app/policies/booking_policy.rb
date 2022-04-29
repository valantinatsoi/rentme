class BookingPolicy < ApplicationPolicy
  def create?
    return true
  end

  def update?
    # only user who created the listing can update
    # record => authorize @listing
    # user -> current_user
    record.user == user
  end

  def destroy?
    # only user who created the listing can update
    # record => authorize @listing
    # user -> current_user
    record.user == user
  end


  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
end
