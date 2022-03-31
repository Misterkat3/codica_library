ActiveAdmin.register Author do
  permit_params :name, :bio, books_ids: []

  index do
    selectable_column
    column :name
    column :bio
    actions
  end

  form do |f|
    f.inputs 'Author' do
      f.input :name
      f.input :bio

      f.input :books, :as => :select, :input_html => {:multiple => true}
    end

    f.actions
  end

  show do
    attributes_table do
      row :name
      row :bio
      row :books do |object|
        object.books.each { |book| link_to book.title, admin_book_path(book) }
      end
    end
  end
end
