class Ability
  include CanCan::Ability

  def initialize(user)
      if user.nil?
        can :read, :all
      elsif user.has_role? :admin
        can :manage, :all
      #아래에 moderator 권한을 추가해주세요. 
      #구조는 위 admin의 elsif 구조와 비슷합니다. 
      #Post모델에대해서만 manange가능하게 해주세요.(아래 else 부분을 참고해주세요)
      elsif user.has_role? :moderator
        can :manage, :Post
      else
        can :manage, Post, user_id: user.id 
        # manage가능, Post 모델에대해, user_id: user.id는 자기가 쓴 글만 하겠다는 뜻!
        can :read, :all 
      end
    
    
    
    
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
