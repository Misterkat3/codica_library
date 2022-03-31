class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :groups, join_table: 'books_groups'
  has_one_attached :cover

  accepts_nested_attributes_for :authors, allow_destroy: true
end
