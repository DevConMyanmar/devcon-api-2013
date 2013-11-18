ActiveAdmin.register Location do
  form do |f|
    f.inputs do
      f.input :name
      f.input :desc
      f.input :long
      f.input :lat
      f.input :color
    end
    f.actions
  end
end
