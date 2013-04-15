# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  author     :string(255)
#  message    :text
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :comments, :as => :commentable
  attr_accessible :author, :message, :post_id, :user_id
  validates :author, :message, :post, :user, :presence => true
  validates :message, :length => { :minimum => 15 }
end
