class Schedule
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :desc, type: String
  field :session_time, type: Time
  field :session_date, type: Date

  has_and_belongs_to_many :talktypes
  has_and_belongs_to_many :speakers
  belongs_to :location
  has_many :feedbacks
end
