class Location
  include Mongoid::Document
  field :name, type: String
  field :desc, type: String
  field :long, type: Float
  field :lat, type: Float
  field :color, type: String


  has_many :schedules
end
