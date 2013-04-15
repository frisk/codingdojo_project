# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  email_address :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ActiveRecord::Base
  has_many :messages, :dependent => :destroy
  has_many :posts, :dependent => :destroy
  has_many :owners, :dependent => :destroy
  has_many :blogs, :through =>:owners
  has_many :comments, :as => :commentable
  attr_accessible :email_address, :first_name, :last_name
  validates :email_address, :first_name, :last_name, :presence => true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  validates :email_address, format: { with: VALID_EMAIL_REGEX } 
end	
