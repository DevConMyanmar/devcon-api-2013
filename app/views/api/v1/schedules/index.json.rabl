object @schedules

attributes :id , :title, :desc, :session_time, :date, :talk_type , :talktype_id , :location_id

node(:speaker_ids) { |e| e.speaker_ids.to_a }
attributes :id => :schedule_id
attributes :desc => :description
attributes :talktype_id => :talktype
attributes :location_id => :location
