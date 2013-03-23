class Api::V1::PostsController < ApplicationController
doorkeeper_for :create
  respond_to :json

  def index
    @community = Community.find(params[:community_id])
    @posts = @community.posts.new_to_old
    respond_with @posts
  end

  def create
    @post = @community.posts.build(post_params)
    @post.user = current_resource_owner
    @post.save
    respond_with @post, location: nil
  end

  private

  def post_params
    params.require(:post).permit(:text)
  end
end
