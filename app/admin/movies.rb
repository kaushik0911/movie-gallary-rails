ActiveAdmin.register Movie do
  permit_params :title, :synopsis, :poster

  form do |f|
    f.inputs 'Movie' do
      f.input :title
      f.input :synopsis
      f.input :poster, as: :file
    end
    f.actions
  end
end
