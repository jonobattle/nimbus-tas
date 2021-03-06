class Site
  include Mongoid::Document
  field :name, type: String
  field :description, type: String

  embeds_many :pages
  accepts_nested_attributes_for :pages

end
