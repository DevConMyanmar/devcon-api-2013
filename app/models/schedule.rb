class Schedule

  include Mongoid::Document

  field :title, type: String
  field :desc, type: String
  field :session_time, type: Integer
  field :date, type: String

  has_many :talktypes
  has_and_belongs_to_many :speakers
end
