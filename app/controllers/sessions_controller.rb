class SessionsController < ApplicationController

    before_action :require_no_authentication, only: [:new, :create]
    before_action :require_authentication, only: [:destroy]

    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            log_in user
            redirect_to user
        else
            flash.now[:danger] = 'Email ou senha errados'
            render 'new'
        end
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def destroy
        log_out
        redirect_to root_url
    end
end