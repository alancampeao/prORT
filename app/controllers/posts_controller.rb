class PostsController < ApplicationController
	def index
		@posts = Post.all.order("created_at DESC")
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
		params.require(:post).permit(:titulo, :conteudo)
	end

end