require 'acts_as_list'

class Block < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :position, :image
  validates :post, :presence => true
  acts_as_list :column => "position", :scope => 'post_id = #{post_id}'

  has_attached_file :image, styles: {
      small: '64x64>',
      medium: '128x128>',
      large: '256x256>',
  }

end
