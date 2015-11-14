class CommentsController < ApplicationController
    before_action :require_authentication, only: [:create, :destroy]
    before_action :can_destroy, only: [:destroy]
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.build(comment_params)
        @comment.user_id = current_user.id
        if @comment.save
            redirect_to post_path(@post.id)
        else
            redirect_to @post, alert: "Houve um erro ao criar o comentário"
        end
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy

        redirect_to post_path(@post)
    end

    private

    def comment_params
        params.require(:comment).permit(:content)
    end

    def can_destroy
        unless logged_in? && comment.user == current_user
                redirect_to post_path(params[:post_id])
        end
    end

    def comment
           @comment = Post.find(params[:post_id]).comments.find(params[:id])
    end

end