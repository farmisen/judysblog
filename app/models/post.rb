class Post < ActiveRecord::Base
  attr_accessible :title
  validates :title, :presence => true
  has_many :paragraphs, :order => "position"
end
