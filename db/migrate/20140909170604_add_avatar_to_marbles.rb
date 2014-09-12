class AddAvatarToMarbles < ActiveRecord::Migration
	def self.up
    add_attachment :marbles, :avatar
  end

  def self.down
    remove_attachment :marbles, :avatar
  end
end
