class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
	  @post = Post.find(params[:id])
		# byebug
	  @post.update(params.require(:post).permit(:post))
	  redirect_to post_path(@post)
	end

	# 1. def post_params(*args)
	# 2. params.require(:post).permit(*args)
	# 3. end



end
