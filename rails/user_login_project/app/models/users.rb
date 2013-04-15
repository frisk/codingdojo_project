class Users < ActiveRecord::Base
  attr_accessible :age, :email_address, :first_name, :last_name
  validates :age, :email_address, :first_name, :last_name, :presence => true
  validates :first_name, :last_name, :length => { :minimum => 2}
  validates :age, :numericality => { :less_than => 150, :greater_than => 10 }
end
