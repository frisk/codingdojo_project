# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  blog_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :messages, :dependent => :destroy
  has_many :comments, :as => :commentable
  attr_accessible :content, :title, :user_id, :blog_id
  validates :content, :title, :blog, :user, :presence => true
  validates :title, :length => { :minimum => 7 }
end
