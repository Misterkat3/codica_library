ActiveAdmin.register Book do
  permit_params :title, :description, :cover,
                author_ids: [],
                group_ids: []

  index do
    selectable_column
    column :title
    column :cover do |object|
      image_tag object.cover, style: 'width: 100px'  if object.cover.present?
    end
    column :description
    actions
  end

  form do |f|
    f.inputs 'Book' do
      f.input :title
      f.input :cover, as: :file
      f.input :description

      f.input :authors, as: :check_boxes
      f.input :groups, as: :check_boxes
    end

    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :cover do |object|
        image_tag url_for(object.cover), style: 'width: 200px' if object.cover.present?
      end
    end
  end
end
