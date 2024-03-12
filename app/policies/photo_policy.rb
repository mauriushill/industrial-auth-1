class PhotoPolicy < ApplicationPolicy
attr_reader :user, :photo

  def initialize(user, photo)  
    @user = user
    @photo = photo
  end

  def show?
    user == photo.owner ||
    !photo.owner.private? ||
    photo.owner.followers.include?(user)
  end
  
  def edit?
    user == photo.owner
  end

  def destroy?
    edit?
  end

  def update?
    edit?
  end
  def create?
    true 
  end
end
