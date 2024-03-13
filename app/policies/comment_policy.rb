class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment
  
    def initialize(user, comment)  
      @user = user
      @comment = comment
      
    end

    

    def edit?
      user == comment.author
    
    end

    def update?
      edit?
    end

    def destroy?
      user == comment.author ||
      user
      
    end

    def create?
      true
    end

  end
