class Group < ApplicationRecord
  has_and_belongs_to_many :books, join_table: 'books_groups'
end
