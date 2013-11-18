object @schedules

attributes :id , :title, :desc, :session_time, :date, :talk_type , :talktype_ids , :location_id

node(:speaker_ids) { |e| e.speaker_ids.to_a }

node(:speaker_names) { |e|
  speakers = []
  e.speakers.each do |s|
    speakers.push(s.name)
  end
  speakers
}

node(:talktype_name) { |e|
  talktypes =  []
  e.talktypes.each do |s|
    talktypes.push(s.name)
  end
  talktypes
}

attributes :id => :schedule_id
attributes :desc => :description
attributes :talktype_id => :talktype
attributes :location_id => :location
