class WelcomeController < ApplicationController
	
  def index
  end

  

  def marble_grade
  end

  def marble_history
  end

  def trader_profile 

  	 @marble = Marble.where(user_id: current_user.id)
  	 @comments = Comment.where(user_id: current_user.id) 
  end

  
end
