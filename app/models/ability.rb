class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Post, public: true

    return unless user.present? # additional permissions for logged in users (they can read their own posts)

    can :read, :all
    can :manage, Post, user: user
    can :manage, Comment, user: user

    return unless user.role == 'admin' # additional permissions for administrators

    can :manage, :all
  end
end
