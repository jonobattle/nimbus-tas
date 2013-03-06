class Extra
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :slug, type: String
  field :type, type: String
  field :value, type: String
end