class Api::V1::PostsController < ApplicationController
  respond_to :json

  def index
    @community = Community.find(params[:community_id])
    @posts = @community.posts.new_to_old
    respond_with @posts
  end
end
