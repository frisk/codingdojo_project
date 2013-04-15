class Product < ActiveRecord::Base
  has_many :categories
  attr_accessible :description, :name, :pricing
  validates :description, :name, :pricing, :presence => true
end
