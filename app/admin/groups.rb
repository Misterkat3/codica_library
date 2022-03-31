ActiveAdmin.register Group do
  permit_params :title

  filter :title
  filter :books
end
