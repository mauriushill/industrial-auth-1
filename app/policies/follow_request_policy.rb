class FollowRequestPolicy < ApplicationPolicy
  attr_reader :user, :follow_request

  def initialize(user, follow_request)
    @user = user
    @follow_request = follow_request
  end

 

  def show?
    true
  end

  def update?
    user == follow_request.recipient ||
    user == follow_request.sender
    
  end

  def destroy?
    update?
  end

  def create?
    true
  end

end
