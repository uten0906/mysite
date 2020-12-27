class RelationshipsController < ApplicationController
  def create
    @user = User.find(params[:relationship][:following_id])
    current_user.follow(@user)
    # redirect_back(fallback_location: root_path)
    respond_to do |format|
      format.html {redirect_back(fallback_location: root_path)}
      format.js
    end
  end

  def destroy
    @user = User.find(params[:relationship][:following_id])
    current_user.unfollow(@user)
    # redirect_back(fallback_location: root_path)
    respond_to do |format|
      format.html {redirect_back(fallback_location: root_path)}
      format.js
    end
  end
end
