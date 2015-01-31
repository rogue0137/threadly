class PostsController < ApplicationController

def index
	@post = Post.new
	@posts = Post.order(created_at: :desc).all
end

def create
	@post = Post.new(post_params)
		@post.save
			redirect_to root_path
end

private 
	def post_params
			params.require(:post).permit(:comment)
	end		

end
