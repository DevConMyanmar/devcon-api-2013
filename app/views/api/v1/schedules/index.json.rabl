object @schedules

attributes :id , :title, :desc, :session_time, :date, :talk_type, :speaker_ids
attributes :speaker_ids => :speakers
attributes :id => :schedule_id
attributes :desc => :description
