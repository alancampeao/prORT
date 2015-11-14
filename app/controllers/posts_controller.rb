class PostsController < ApplicationController
	before_action :require_authentication, only: [:new, :create, :edit, :update, :destroy, :upvote, :downvote, :show]
	before_action :can_edit, only: [:edit, :update]

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
		if params[:category].blank? && params[:q].present?
			@search_query = params[:q]
			posts = Post.search(@search_query)
			@posts = posts.order("cached_votes_score DESC")
		elsif params[:category].present? && params[:q].blank?
			@category_id = Category.find_by(name: params[:category]).id
			posts = Post.where(category_id: @category_id)
			@posts = posts.order("cached_votes_score DESC")
		elsif params[:category].blank? && params[:q].blank?
			@posts = Post.all.order("cached_votes_score DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@search_query = params[:q]
			posts_with_categories = Post.where(category_id: @category_id)
			posts = posts_categories.search(@search_query)
			@posts = posts.order("cached_votes_score DESC")
		end
	end

	def new
		@post = current_user.posts.build
	end

	def create
		@post = current_user.posts.build(post_params)

		if @post.save
			redirect_to post_path(@post), notice: "Post criado com sucesso!"
		else
			render action: :new
		end
	end

	def show
		@post = Post.find(params[:id])
		@comments = @post.comments.order("created_at DESC")
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

	def can_edit
	    unless logged_in? && post.user == current_user
	            redirect_to post_path(params[:id])
	    end
	end

	def post
	       @post ||= Post.find(params[:id])
	end

end