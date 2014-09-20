class WelcomeController < ApplicationController
	
  def index
  end

  

  def marble_grade
  end

  def marble_history
  end

  def trader_profile 

  	 @marb = Marble.where(user_id: current_user.id)
     @marble = @marb.reverse_order
  	 @comments = Comment.where(user_id: current_user.id) 
  end

  
end
