# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new # guest user (not logged in)

    can :manage, :all if user.super_admin?
    can :read, :all

    can :manage, Author

    can :manage, Book if user.book_editor?
    can :manage, Group if user.group_editor?
  end
end
