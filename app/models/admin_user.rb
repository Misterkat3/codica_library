class AdminUser < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  def super_admin?
    available_roles.include? 'super_admin'
  end

  def book_editor?
    available_roles.include? 'book_editor'
  end

  def group_editor?
    available_roles.include? 'group_editor'
  end

  def available_roles
    roles.try(:split, ',') || []
  end
end
