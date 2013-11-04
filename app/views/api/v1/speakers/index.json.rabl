object @speakers

attributes :id, :name, :job_title, :email, :bio, :photo

node(:schedule_ids) { |e| e.schedule_ids.to_s }

attributes :job_title => :title
attributes :id => :speaker_id
attributes :name => :speaker_name
attributes :bio => :biography
attributes :photo => :speaker_photo
