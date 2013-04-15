class Ninja < ActiveRecord::Base
  belongs_to :dojo
  attr_accessible :dojo, :first_name, :last_name
  validates :first_name, :last_name, :dojo, :presence => true
end
