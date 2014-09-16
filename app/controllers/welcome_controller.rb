class WelcomeController < ApplicationController
	
  def index
  end

  def marble_grade
  end

  def marble_history
  end

  def user_profile
  	 
  	 @comments = Comment.where(user_id: current_user.id)
  	  
  end

  # def marble
  	 #@marbles = Marble.where(user_id: current_user.id)
  	 # @comments = Comment.where(user_id: current_user.id)
  	 # @user = User.where(user_id: current_user.id) 
  	 # @marbles = Marble.where(user_id: current_user.id)
  	 # @user = User.where(user_id: current_user.id)
  #end





end
