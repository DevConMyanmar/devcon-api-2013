class Talktype
  include Mongoid::Document

  field :name, type: String

  has_many :schedule
end
