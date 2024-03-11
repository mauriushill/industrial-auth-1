class PhotoPolicy
attr_reader :user, :photo

  def intialize(user, photo)  
    @user = user
    @photo = photo
  end
end
