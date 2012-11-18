class Paragraph < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body
  validates :post, :presence => true

end
