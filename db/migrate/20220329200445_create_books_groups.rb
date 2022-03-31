class CreateBooksGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :books_groups, id: false do |t|
      t.bigint :book_id
      t.bigint :group_id
    end
  end
end
