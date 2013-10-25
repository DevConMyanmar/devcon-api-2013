class Speaker
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :bio, type: String
  field :photo, type: String
end
