class FriendsController < ApplicationController
  
  def my_friends
    @friends = current_user.friends
  end

  def destroy
    friendship = Friendship.find(params[:id])

    friendship.destroy
    flash[:notice] = "#{stock.ticker} was successfully removed from portfolio"
    redirect_to my_friends_path
  end

end