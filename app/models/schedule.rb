class Schedule

  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :desc, type: String
  field :session_time, type: String
  field :date, type: String
  field :talk_type, type: String
end
