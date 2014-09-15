class Comment < ActiveRecord::Base
	
	belongs_to :marble
	belongs_to :user
end

