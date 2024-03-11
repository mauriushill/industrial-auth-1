class PhotoPolicy
attr_reader :user, :photo

  def intialize(user, photo)  
    @user = user
    @photo = photo
  end

  def show?
    user == photo.owner ||
    !photo.owner.private? ||
    photo.owner.followers.include?(user)
  end
end
