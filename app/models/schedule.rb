class Schedule

  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :desc, type: String
  field :session_time, type: String
  field :date, type: String , default: "23 , November"
  field :talk_type, type: String

  has_and_belongs_to_many :speakers
end
