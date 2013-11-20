ActiveAdmin.register Schedule do

  form do |f|
    f.inputs do
      f.input :title
      f.input :desc
      f.input :session_time, :as => :string, :input_html => {:class => "customdatePicker"}
      f.input :session_date,  as: :datepicker
      f.input :speaker_ids , collection: Speaker.all.map { |et| ["#{et.name}", et._id.to_s] }
      f.input :location_id , collection: Location.all.map { |et| ["#{et.name}", et._id.to_s] }
      f.input :talktype_ids, collection: Talktype.all.map { |et| ["#{et.name}" , et._id.to_s] }
    end
    f.actions
  end
end
