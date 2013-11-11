class Schedule
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :desc, type: String
  field :session_time, type: Time
  field :session_date, type: Date

  belongs_to :talktype
  belongs_to :location
  has_and_belongs_to_many :speakers

end
