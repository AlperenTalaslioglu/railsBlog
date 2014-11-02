class Category < ActiveRecord::Base
	has_many :entries
	validates :name, :presence => true, :length => { :minimum => 3}
end
