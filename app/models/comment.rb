class Comment < ActiveRecord::Base
	
	belongs_to :marble
	belongs_to :user

	scope :updated_at, -> {where(updated_at: desc)}

  def self.descend
    order('updated_at desc')
  end
end

