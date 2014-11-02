class Entry < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :comments
  validates :title, :presence => true, :length => { :minimum => 3 }
  validates :content, :presence => true, :length => { :minimum => 3 }
  accepts_nested_attributes_for :comments
end
