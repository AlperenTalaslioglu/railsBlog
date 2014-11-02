class Comment < ActiveRecord::Base
  belongs_to :entry
  validates :author, :presence => true, :length => { :minimum => 3 }
  validates :body, :presence => true, :length => { :minimum => 3 }
end