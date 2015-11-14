class UsersController < ApplicationController
    before_action :require_authentication, only: [:show, :edit, :update]
    before_action :require_no_authentication, only: [:new, :create]

    before_action :can_change, only: [:edit, :update]

    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        if @user.save
            UserMailer.welcome_email(@user).deliver_now
            redirect_to login_path ,
                notice: 'Cadastrado com sucesso!'
        else
            render action: :new
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to @user ,
                notice: 'Cadastro atualizado com sucesso!'
        else
            render action: :edit
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    private

    def user_params
        params.
            require(:user).
            permit(:email, :full_name, :password, :password_confirmation)
    end

    def can_change
        unless logged_in? && current_user == user
            redirect_to user_path(params[:id])
        end
    end

    def user
        @user ||= User.find(params[:id])
    end
end

