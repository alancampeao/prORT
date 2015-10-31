class PostsController < ApplicationController

	def upvote
		@post = Post.find(params[:id])
    	@post.upvote_by current_user
    	
    	redirect_to :back
    end

    def downvote
		@post = Post.find(params[:id])
    	@post.downvote_by current_user
    	redirect_to :back
    end

	def index
		if params[:category].blank?
			@posts = Post.order("cached_votes_score DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@posts = Post.where(category_id: @category_id)
		end
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to post_path(@post), notice: "Post criado com sucesso!"
		else
			render action: :new
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(post_params)
			redirect_to post_path(@post), notice: "Post atualizado com sucesso!"
		else
			render action: :edit
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path, notice: "Post deletado com sucesso!"
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :category_id, :anonymous)
	end

end