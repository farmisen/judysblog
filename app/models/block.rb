require 'acts_as_list'

class Block < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :position
  validates :post, :presence => true
  acts_as_list :column => "position", :scope => 'post_id = #{post_id}'
end
