class CreateAuthorsBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :authors_books, id: false do |t|
      t.bigint :author_id
      t.bigint :book_id
    end

    add_index :authors_books, :author_id
    add_index :authors_books, :book_id
  end
end
