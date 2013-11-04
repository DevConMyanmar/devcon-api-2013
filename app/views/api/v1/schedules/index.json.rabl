object @schedules

attributes :id , :title, :desc, :session_time, :date, :talk_type, :speaker_ids, :talktype_ids , :location_ids
attributes :speaker_ids => :speaker
attributes :id => :schedule_id
attributes :desc => :description
attributes :talktype_ids => :talktype
attributes :location_ids => :location
