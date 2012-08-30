class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)

    if user.role? :manager
      can :manage, Book
    elsif user.role? :student
      can :read, Book
      #cannot :index, User # list users page
    else
      can :read, :all
    end
  end
end
