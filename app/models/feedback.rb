class Feedback
  include Mongoid::Document
  field :uid, type: String
  field :rating, type: Integer
  field :comment, type: String

  belongs_to :feedback
end
