# == Schema Information
#
# Table name: blogs
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Blog < ActiveRecord::Base
  has_many :posts, :dependent => :destroy
  has_many :owners, :dependent => :destroy
  has_many :users, :through => :owners
  has_many :comments, :as => :commentable
  attr_accessible :description, :name
  validates :name, :description, :presence => true
end
