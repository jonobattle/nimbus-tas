class Page
  include Mongoid::Document
  field :name, type: String
  field :body, type: String
  field :slug, type: String
  field :template, type: String
  field :rank, type: Integer
  field :is_navigable, type: Boolean
  field :is_enabled, type: Boolean

  embeds_many :pages
  embeds_many :images
  embeds_many :extras

  belongs_to :site

  accepts_nested_attributes_for :pages
  accepts_nested_attributes_for :images
  accepts_nested_attributes_for :extras

end
