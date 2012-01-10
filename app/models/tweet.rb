class Tweet < ActiveRecord::Base
  attr_accessible :content
  validates_length_of :content, :maximum => 140
end
