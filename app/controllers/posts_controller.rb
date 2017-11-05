class PostsController < ApplicationController
  def create
    post = Post.new(new_post_params)
    post.wall_id = session[:wall_id]
    post.user_id = current_user.id
    post.save

    flash[:notice] = post.errors.full_messages
    redirect_to user_path(session[:wall_id])
  end

  private

    def new_post_params
      params.require(:post).permit(:user_id, :description)
    end
end
