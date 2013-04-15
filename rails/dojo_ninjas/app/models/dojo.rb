class Dojo < ActiveRecord::Base
  has_many :ninjas, :dependent => :destroy
  attr_accessible :city, :name, :state
  validates :name, :city, :state, :presence => true
  validates :state, :length => { :maximum => 2, :minimum => 2}
end
